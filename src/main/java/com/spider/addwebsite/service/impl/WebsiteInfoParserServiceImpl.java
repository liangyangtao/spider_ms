package com.spider.addwebsite.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spider.addwebsite.dao.WebsiteInfoParserDao;
import com.spider.addwebsite.service.WebsiteInfoParserService;
import com.spider.mybatis.entity.WebsiteInfoParser;

@Service
public class WebsiteInfoParserServiceImpl implements WebsiteInfoParserService {
	@Autowired
	WebsiteInfoParserDao websiteInfoParserDao;

	@PostConstruct
	public void init() {
		System.out.println("读取解析规则");
		List<WebsiteInfoParser> WebsiteInfoParserList = readWebsiteInfoPasers();
		for (WebsiteInfoParser websiteInfoParser : WebsiteInfoParserList) {
			List<WebsiteInfoParser> websiteInfoParsers = null;
			if (websiteInfoPaserlist.get(websiteInfoParser.getContenturlHost()
					.trim()) == null) {
				websiteInfoParsers = new ArrayList<WebsiteInfoParser>();
			} else {
				websiteInfoParsers = websiteInfoPaserlist.get(websiteInfoParser
						.getContenturlHost());
			}
			websiteInfoParsers.add(websiteInfoParser);
			websiteInfoPaserlist.put(websiteInfoParser.getContenturlHost(),
					websiteInfoParsers);
		}

	}

	public List<WebsiteInfoParser> readWebsiteInfoPasers() {
		// TODO Auto-generated method stub
		return websiteInfoParserDao.readWebsiteInfoPasers();
	}

	public boolean saveWebsiteInfoParser(WebsiteInfoParser websiteInfoParser) {
		// TODO Auto-generated method stub
		return websiteInfoParserDao.saveWebsiteInfoParser(websiteInfoParser);
	}

}
