package com.spider.addwebsite.service;

import java.util.List;

import com.spider.mybatis.entity.WebsiteInfo;
import com.spider.tools.SearchEntity;

public interface WebsiteInfoService {

	List<WebsiteInfo> showWebsite(SearchEntity searchEntity, Integer rows,
			Integer page);

	int countOfWebsiteInfo(SearchEntity searchEntity);

	boolean checkUrl(SearchEntity searchEntity);

}
