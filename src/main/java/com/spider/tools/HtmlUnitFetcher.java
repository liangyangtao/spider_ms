package com.spider.tools;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.gargoylesoftware.htmlunit.BrowserVersion;
import com.gargoylesoftware.htmlunit.NicelyResynchronizingAjaxController;
import com.gargoylesoftware.htmlunit.ProxyConfig;
import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.HtmlPage;

public class HtmlUnitFetcher {

	private static Log logger = LogFactory.getLog(HtmlUnitFetcher.class);

	public WebClient getWebClient() {
		WebClient webClient = new WebClient(BrowserVersion.FIREFOX_38);
		webClient.getOptions().setThrowExceptionOnScriptError(false);
		webClient.getOptions().setThrowExceptionOnFailingStatusCode(false);
		webClient.getOptions().setJavaScriptEnabled(true);
		webClient.getOptions().setCssEnabled(false);
		webClient.getOptions().setTimeout(10 * 1000);
		webClient.getOptions().setRedirectEnabled(true);
		webClient.waitForBackgroundJavaScript(10 * 1000);
		webClient.setAjaxController(new NicelyResynchronizingAjaxController());
		return webClient;
	}

	public String get(String url) {
		HtmlPage page = null;
		WebClient webClient = getWebClient();
		try {
			page = webClient.getPage(url);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			webClient.close();
		}
		String html = page.asXml();
		return html;
	}

	public String get(String url, String charset) {
		return get(url);
	}

	public void setProxy(WebClient webClient, String proxyIp, String proxyPort) {
		ProxyConfig proxyConfig = new ProxyConfig(proxyIp,
				Integer.parseInt(proxyPort));
		webClient.getOptions().setProxyConfig(proxyConfig);
	}

}
