package com.spider.addwebsite.action;

import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.spider.addwebsite.service.WebsiteInfoService;
import com.spider.tools.SearchEntity;

@ParentPackage("json-default")
@Namespace("/")
@Results({ @Result(name = "success", type = "json") })
public class CheckUrlAction extends ActionSupport implements
		ModelDriven<SearchEntity> {
	private SearchEntity searchEntity = new SearchEntity();
	private Map<String, Object> result = new HashMap<String, Object>();
	@Autowired
	private WebsiteInfoService websiteInfoService;

	@Action(value = "checkUrl", results = { @Result(name = "success", type = "json", params = {
			"root", "result" }) })
	public String checkUrl() {
		boolean isExit = websiteInfoService.checkUrl(searchEntity);
		result.put("isExit", isExit);
		return SUCCESS;
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
