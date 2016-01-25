package com.spider.addwebsite.action;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.spider.addwebsite.service.WebsiteInfoParserService;
import com.spider.mybatis.entity.WebsiteInfoParser;
import com.spider.parser.TitleListParer;
import com.spider.tools.Fetcher;
import com.spider.tools.HtmlUnitFetcher;
import com.spider.tools.SearchEntity;

@ParentPackage("json-default")
@Namespace("/")
@Results({ @Result(name = "success", type = "json") })
public class FeathUrlListAction extends ActionSupport implements
		ModelDriven<SearchEntity> {
	private SearchEntity searchEntity = new SearchEntity();
	private Map<String, Object> result = new HashMap<String, Object>();
	@Autowired
	private WebsiteInfoParserService websiteInfoParserService;

	@Action(value = "feathUrlList", results = { @Result(name = "success", type = "json", params = {
			"root", "result" }) })
	public String feathUrlList() {
		String url = searchEntity.getUrlHome();
		String html = null;
		String checkListText = searchEntity.getCheckListText();
		String checkListCssPath = searchEntity.getCheckListCssPath();
		html = getHtmlByModel(url);
		Elements urlElements = getUrlListElements(url, checkListText, html);
		List<String> urls = fillUrls(urlElements);
		if (urls.size() == 0 && searchEntity.getWebModel() != 2) {

			html = new HtmlUnitFetcher().get(url);
			urlElements = getUrlListElements(url, checkListText, html);
			urls = fillUrls(urlElements);
		}
		result.put("urlList", urls);
		return SUCCESS;
	}

	private List<String> fillUrls(Elements urlElements) {
		List<String> urls = new ArrayList<String>();
		for (Element element : urlElements) {
			if (element.text().trim().length() < 5) {
				element.remove();
				continue;
			}

			removeElementAttr(element);
			if (element.attr("href").trim().isEmpty()) {
				element.remove();
				continue;
			}
			String newAttr = element.absUrl("href").trim();
			if (newAttr == null || newAttr.isEmpty()) {
				element.remove();
				continue;
			}
			element.attr("href", newAttr);
			element.attr("target", "_blank");
			urls.add(element.toString());
		}
		return urls;
	}

	private String getHtmlByModel(String url) {
		String html;
		if (searchEntity.getWebModel() == null
				|| searchEntity.getWebModel() == 1) {
			html = Fetcher.getInstance().getHtmlWithCookie(url);
		} else {
			html = new HtmlUnitFetcher().get(url);
		}
		return html;
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

	private Elements getUrlListElements(String url, String checkListText,
			String html) {
		Document document = Jsoup.parse(html, url);
		Elements urlElements = null;
		if (checkListText == null || checkListText.isEmpty()) {
			urlElements = getTitleListElementBySQL(url, document);
			if (urlElements == null) {// 如果为空表明没有相同host 的网址存在
				urlElements = new TitleListParer()
						.getPossibleListElement(document);
			}
		} else {
			urlElements = new TitleListParer().getPossibleListElement(document,
					checkListText);
		}

		return urlElements;
	}

	private Elements getTitleListElementBySQL(String url, Document document) {
		List<WebsiteInfoParser> websiteInfoParsers = websiteInfoParserService.websiteInfoPaserlist
				.get(getDomain(url));
		if (websiteInfoParsers == null) {
			return null;
		}

		for (WebsiteInfoParser websiteParser : websiteInfoParsers) {

			String listPath = websiteParser.getListPath();
			Elements listElements = document.select(listPath.trim());
			String ListNeedlesselementsPath = websiteParser
					.getListNeedlesselementsPath();
			// 去除不需要的元素
			if (ListNeedlesselementsPath != null
					&& (!ListNeedlesselementsPath.isEmpty())) {
				for (Element listElement : listElements) {
					Elements noNeedsElements = listElement
							.select(ListNeedlesselementsPath.trim());
					for (Element noNeedelement : noNeedsElements) {
						noNeedelement.remove();
					}
				}

			}
			if (listElements.size() == 0) {
				continue;
			} else {
				return listElements;
			}

		}
		return null;

	}

	public void removeElementAttr(Element element) {
		if (element == null) {
			return;
		}
		Attributes attributes = element.attributes();
		for (Attribute attribute : attributes) {
			if (attribute.getKey().equals("href")) {
				continue;
			} else {
				element.removeAttr(attribute.getKey());
			}
		}
	}

	public SearchEntity getSearchEntity() {
		return searchEntity;
	}

	public void setSearchEntity(SearchEntity searchEntity) {
		this.searchEntity = searchEntity;
	}

	public Map<String, Object> getResult() {
		return result;
	}

	public void setResult(Map<String, Object> result) {
		this.result = result;
	}

	public SearchEntity getModel() {
		return searchEntity;
	}

}
