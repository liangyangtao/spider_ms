package com.spider.addwebsite.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spider.addwebsite.dao.WebSiteInfoDao;
import com.spider.mybatis.entity.WebsiteInfo;
import com.spider.mybatis.entity.WebsiteInfoExample;
import com.spider.mybatis.mapper.WebsiteInfoMapper;
import com.spider.tools.SearchEntity;

@Repository
public class WebsiteInfoDaoImpl implements WebSiteInfoDao {
	@Autowired
	private WebsiteInfoMapper websiteInfoMapper;

	public List<WebsiteInfo> showWebsite(SearchEntity searchEntity,
			Integer start, Integer number) {
		WebsiteInfoExample example = new WebsiteInfoExample();
		example.setOrderByClause("website_id limit " + start + "," + number);
		return websiteInfoMapper.selectByExample(example);
	}

	public int countOfWebsiteInfo(SearchEntity searchEntity) {
		WebsiteInfoExample example = new WebsiteInfoExample();

		return websiteInfoMapper.countByExample(example);
	}

	public boolean checkUrl(SearchEntity searchEntity) {
		WebsiteInfoExample example = new WebsiteInfoExample();
		example.or().andUrlHomeEqualTo(searchEntity.getUrlHome().trim());
		List<WebsiteInfo> websites = websiteInfoMapper.selectByExample(example);
		if (websites.size() == 0) {
			return false;
		} else {
			return true;
		}
	}

}
