package com.spider.addwebsite.dao;

import java.util.List;

import com.spider.mybatis.entity.WebsiteInfoParser;

public interface WebsiteInfoParserDao {

	List<WebsiteInfoParser> readWebsiteInfoPasers();

	boolean saveWebsiteInfoParser(WebsiteInfoParser websiteInfoParser);

}
