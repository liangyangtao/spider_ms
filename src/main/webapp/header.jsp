<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<div id="header">
	<p class="cate_nav_mask" style="height: 55px;"></p>
	<div class="headercenter clearfix">
		<div id="menulogo">
			<a href="#"><img src="<%=basePath%>/images/logo.png" alt="发源地">
			</a>

		</div>
		<ul class="nav">
			<li class=""><a href="<%=basePath%>index.jsp">首页</a></li>
			<li class=""><span class="menuline"></span></li>
			<li class=""><a href="<%=basePath%>index.jsp">交易市场</a>
			</li>
			<li class=""><span class="menuline"></span></li>
			<li class=""><a href="<%=basePath%>custom.jsp">数据定制</a>
			</li>
			<li class=""><span class="menuline"></span></li>
			<li class=""><a href="<%=basePath%>index.jsp">关于我们</a></li>
		</ul>
		<ul class="usernav">
			<li class="login reg"><a
				href="<%=basePath%>index.jsp">注册</a>
			</li>
			<li class="login-link"><a class="rounded3"
				href="<%=basePath%>index.jsp"><i
					class="faicon fa fa-user"></i> 登录</a>
			</li>
		</ul>
		<!-- <div id="menunav">
				<span id="muser"> <a href="#" class="un">yangtao</a>
					<div id="userMenu">
						<ul>
							<li><a href="#"><i class="faicon fa fa-user"></i> 用户中心</a></li>
							<li><a href="#"><i class="faicon fa fa-shopping-cart"></i>
									在线充值</a></li>
							<li><a href="#"><i class="faicon fa fa-plus"></i> 开始定制源</a>
							</li>
							<li class="nl"><a href="#"><i
									class="faicon fa fa-power-off"></i> 退出登录</a></li>
						</ul>
					</div> </span>
			</div> -->
	</div>
</div>