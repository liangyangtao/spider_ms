<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div id="footer">
	<div class="footer">
		<div class="wrap">
			<dl>
				<dt>关于我们</dt>
				<dd>
					<a href="<%=basePath%>index.jsp" target="_blank">关于发源地</a>
				</dd>
				<dd>
					<a href="<%=basePath%>index.jsp">商务渠道合作</a>
				</dd>
				<dd>
					<a href="<%=basePath%>index.jsp">发源地网站首页</a>
				</dd>
			</dl>
			<dl>
				<dt>使用指南</dt>
				<dd>
					<a href="<%=basePath%>index.jsp" target="_blank">帮助中心</a>
				</dd>
				<dd>
					<a href="<%=basePath%>index.jsp">关于发源地源宝</a>
				</dd>
			</dl>
			<dl>
				<dt>用户支持中心</dt>
				<dd>
					<a href="<%=basePath%>index.jsp">联系我们</a>
				</dd>
				<dd>
					<a href="<%=basePath%>index.jsp">意见反馈</a>
				</dd>
			</dl>
			<dl>
				<dt>服务条款与备案信息</dt>
				<dd>
					<a href="<%=basePath%>index.jsp" target="_blank">服务条款</a>
				</dd>
				<dd>
					<a href="<%=basePath%>index.jsp" target="_blank">隐私与安全</a>
				</dd>
				<dd>
					<b>沪ICP备09073967号</b>
				</dd>
			</dl>
			<div class="copyright">2015 版权所有 ©发源地</div>
		</div>
	</div>

</div>
