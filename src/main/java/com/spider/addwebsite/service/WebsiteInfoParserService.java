package com.spider.addwebsite.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spider.mybatis.entity.WebsiteInfoParser;

public interface WebsiteInfoParserService {
	static Map<String, List<WebsiteInfoParser>> websiteInfoPaserlist = new HashMap<String, List<WebsiteInfoParser>>();

	List<WebsiteInfoParser> readWebsiteInfoPasers();
	
	boolean saveWebsiteInfoParser(WebsiteInfoParser websiteInfoParser);

}
