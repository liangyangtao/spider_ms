package com.spider.addwebsite.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spider.addwebsite.dao.WebSiteInfoDao;
import com.spider.addwebsite.service.WebsiteInfoService;
import com.spider.mybatis.entity.WebsiteInfo;
import com.spider.tools.SearchEntity;

@Service
public class WebsiteInfoServiceImpl implements WebsiteInfoService {

	@Autowired
	private WebSiteInfoDao webSiteInfoDao;

	public List<WebsiteInfo> showWebsite(SearchEntity searchEntity,
			Integer start, Integer number) {
		return webSiteInfoDao.showWebsite(searchEntity, start, number);
	}

	public int countOfWebsiteInfo(SearchEntity searchEntity) {
		return webSiteInfoDao.countOfWebsiteInfo(searchEntity);
	}

	public boolean checkUrl(SearchEntity searchEntity) {
		return webSiteInfoDao.checkUrl(searchEntity);
	}

}
