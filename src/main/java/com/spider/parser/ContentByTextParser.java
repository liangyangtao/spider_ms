package com.spider.parser;

import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.spider.tools.JsoupElementTools;

public class ContentByTextParser {

	public Element getPossibleContentElement(Document document,
			String checkContentText) {
		Elements wantElements = document.body().select(":containsOwn("
				+ checkContentText.trim() + ")");
		String linkCssPath = null;
		for (Element element : wantElements) {
			StringBuffer cssPath = new StringBuffer();
			linkCssPath = JsoupElementTools.checkPathNoIndex(document, element,
					cssPath).toString();
		}
		Element element = document.select(linkCssPath).first();
		return element.parent();
	}

	public String getContent(Document document, String checkContentText) {
		return getPossibleContentElement(document, checkContentText).toString();
	}

}
