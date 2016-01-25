package com.spider.addwebsite.dao;

import java.util.List;

import com.spider.mybatis.entity.WebsiteInfo;
import com.spider.tools.SearchEntity;

public interface WebSiteInfoDao {

	List<WebsiteInfo> showWebsite(SearchEntity searchEntity, Integer start,
			Integer number);

	int countOfWebsiteInfo(SearchEntity searchEntity);

	boolean checkUrl(SearchEntity searchEntity);

}
