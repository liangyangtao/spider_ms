package com.spider.addwebsite.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spider.addwebsite.dao.WebsiteInfoParserDao;
import com.spider.mybatis.entity.WebsiteInfoParser;
import com.spider.mybatis.entity.WebsiteInfoParserExample;
import com.spider.mybatis.mapper.WebsiteInfoParserMapper;

@Repository
public class WebsiteInfoParserDaoImpl implements WebsiteInfoParserDao {

	@Autowired
	WebsiteInfoParserMapper websiteInfoParserMapper;

	public List<WebsiteInfoParser> readWebsiteInfoPasers() {
		WebsiteInfoParserExample example = new WebsiteInfoParserExample();
		return websiteInfoParserMapper.selectByExample(example);
	}

	public boolean saveWebsiteInfoParser(WebsiteInfoParser websiteInfoParser) {
		int i = websiteInfoParserMapper.insertSelective(websiteInfoParser);
		if (i == 0) {
			return false;
		} else {
			return true;
		}
	}

}
