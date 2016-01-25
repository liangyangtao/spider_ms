package com.spider.parser;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.spider.addwebsite.service.WebsiteInfoParserService;
import com.spider.mybatis.entity.WebsiteInfoParser;
import com.spider.tools.ImageFetch;

public class ContentBasePaser {
	WebsiteInfoParserService websiteInfoParserService;

	public ContentBasePaser(WebsiteInfoParserService websiteInfoParserService) {
		this.websiteInfoParserService = websiteInfoParserService;
	}

	public String getContent(String url, String checkTextCssPath,
			Document document) {
		return getContentElement(url, checkTextCssPath, document).toString();
	}

	private Element getContentElement(String url, String checkTextCssPath,
			Document document) {
		Element contentElement = null;
		if (checkTextCssPath == null || checkTextCssPath.isEmpty()) {
			contentElement = getContentElementBySQL(url, document);
			if (contentElement == null) {// 如果为空表明没有相同host 的网址存在
				contentElement =  new ContentByArithmeticParser().getPossibleContentElement(document,checkTextCssPath);
			}
		} else {
			contentElement = new ContentByTextParser()
					.getPossibleContentElement(document, checkTextCssPath);
		}

		return contentElement;
	}

	private Element getContentElementBySQL(String url, Document document) {
		List<WebsiteInfoParser> websiteInfoParsers = websiteInfoParserService.websiteInfoPaserlist
				.get(getDomain(url));
		if (websiteInfoParsers == null) {
			return null;
		}
		for (WebsiteInfoParser websiteInfoParser : websiteInfoParsers) {
			String contentPath = websiteInfoParser.getNewscontentPath();
			Element element = document.select(contentPath.trim()).first();
			String needlessPath = websiteInfoParser.getNeedlesselementsPath();
			if (needlessPath != null && (!needlessPath.isEmpty())) {
				Elements elements = element.select(needlessPath.trim());
				for (Element element2 : elements) {
					element2.remove();
				}
			}
			return element;
		}
		return null;
	}

	public String getDomain(String url) {
		String domain = "";
		try {
			URL u = new URL(url);
			domain = u.getHost();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
		return domain;
	}

}
