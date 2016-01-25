package com.spider.addwebsite.action;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.spider.addwebsite.service.WebsiteInfoParserService;
import com.spider.parser.ContentBasePaser;
import com.spider.parser.TimeBasePaser;
import com.spider.parser.TitleBasePaser;
import com.spider.tools.Fetcher;
import com.spider.tools.HtmlUnitFetcher;
import com.spider.tools.SearchEntity;

@ParentPackage("json-default")
@Namespace("/")
@Results({ @Result(name = "success", type = "json") })
public class FeathContentAction extends ActionSupport implements
		ModelDriven<SearchEntity> {
	private SearchEntity searchEntity = new SearchEntity();
	private Map<String, Object> result = new HashMap<String, Object>();
	@Autowired
	private WebsiteInfoParserService websiteInfoParserService;

	@Action(value = "feathContent", results = { @Result(name = "success", type = "json", params = {
			"root", "result" }) })
	public String feathContent() {
		String url = searchEntity.getUrlHome();
		Map<String, String> contentMap = new HashMap<String, String>();
		String title = "";
		String content = "";
		Date time = null;
		if (url != null && !url.isEmpty()) {
			String html = null;
			String checkTitleCssPath = searchEntity.getCheckTitleCssPath().trim();
			String checkTimeCssPath = searchEntity.getCheckTimeCssPath().trim();
			String checkTextCssPath = searchEntity.getCheckTextCssPath().trim();
			html = getHtmlByModel(url);
			Document document = Jsoup.parse(html, url);
			// 获取内容
			content = new ContentBasePaser(websiteInfoParserService)
					.getContent(url, checkTextCssPath, document);
			// 获取标题
			title = new TitleBasePaser(websiteInfoParserService).getTitle(url,
					checkTitleCssPath, document);
			// 获取时间
			time = new TimeBasePaser().getDate(document);
		}
		contentMap.put("title", title);
		contentMap.put("content", content);
		contentMap.put("time", time.toLocaleString());
		result.put("contentMap", contentMap);
		return SUCCESS;
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
