package com.spider.addwebsite.action;

import java.util.HashMap;
import java.util.List;
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
import com.spider.mybatis.entity.WebsiteInfo;
import com.spider.tools.SearchEntity;

@ParentPackage("json-default")
@Namespace("/")
@Results({ @Result(name = "success", type = "json") })
public class ShowWebsiteAction extends ActionSupport implements
		ModelDriven<SearchEntity> {
	private SearchEntity searchEntity = new SearchEntity();
	private Map<String, Object> result = new HashMap<String, Object>();
	@Autowired
	private WebsiteInfoService websiteInfoService;
	private Integer limit = 0;// 每页显示的记录数
	private Integer offset = 0;// 当前第几页

	@Action(value = "showWebsite", results = { @Result(name = "success", type = "json", params = {
			"root", "result" }) })
	public String showWebsite() {
		// 每页显示条数
		int number = limit;
		int start = offset;
		List<WebsiteInfo> websiteInfos = websiteInfoService.showWebsite(
				searchEntity, start, number);
		int totalNum = websiteInfoService.countOfWebsiteInfo(searchEntity);
		result.put("total", totalNum);
		result.put("rows", websiteInfos);
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

	public Integer getLimit() {
		return limit;
	}

	public void setLimit(Integer limit) {
		this.limit = limit;
	}

	public Integer getOffset() {
		return offset;
	}

	public void setOffset(Integer offset) {
		this.offset = offset;
	}

	public SearchEntity getModel() {
		return searchEntity;
	}

}
