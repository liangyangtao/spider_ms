<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<div class="step-pane active" id="step1">
	<h3 class="lighter block green">录入新闻列表页网址</h3>
	<p class="tabhelp">
		<i class="icon-bullhorn"></i> 数据来源的入口，请不要把不是列表类型的网址输入
	</p>
	<div class="form-group has-warning">

		<label for="inputWarning"
			class="col-xs-12 col-sm-3 control-label no-padding-right"></label>
		<div class="col-xs-12 col-sm-5">
			<span class="block input-icon input-icon-right"> <input
				type="text" id="url_home" class="width-100"
				placeholder="http://news.sina.com.cn/world/" /> <i class="icon-list"></i>
			</span>
		</div>
		<div class="help-block col-xs-12 col-sm-reset inline">例如:
			http://news.sina.com.cn/world/</div>
	</div>
</div>