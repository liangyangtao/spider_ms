<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<div class="navbar navbar-default" id="navbar">
	<script type="text/javascript">
		try {
			ace.settings.check('navbar', 'fixed')
		} catch (e) {
		}
	</script>

	<div class="navbar-container" id="navbar-container">
		<!-- /section:basics/sidebar.mobile.toggle -->
		<div class="navbar-header pull-left">
			<!-- #section:basics/navbar.layout.brand -->
			<a href="#" class="navbar-brand"> <small> <i
					class="icon-leaf"></i> 个人中心 </small> </a>
		</div>
		<div class="navbar-header pull-right" role="navigation">
			<ul class="nav ace-nav">




				<li class="green"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#"> 快捷菜单</a>

					<ul class="pull-right  dropdown-menu dropdown-caret dropdown-close">


						<li><a href="#">
								<div class="clearfix">
									<span class="pull-left"> <i
										class="btn btn-xs no-hover btn-success icon-comment"></i> 在线客服</span>
								</div> </a>
						</li>
						<li><a href="#">
								<div class="clearfix">
									<span class="pull-left"> <i
										class="btn btn-xs no-hover btn-success icon-shopping-cart"></i>
										官方网址 </span>
								</div> </a>
						</li>
					</ul></li>

				<li class="green"><a data-toggle="dropdown" href="#"
					class="dropdown-toggle"> <img class="nav-user-photo"
						src="<%=basePath%>assets/avatars/user.jpg" alt="Jason's Photo" />
						<span class="user-info"> <small>欢迎您</small> yangtao</span> <i
						class="icon-caret-down"></i> </a>

					<ul
						class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
						<li><a href="#"> <i
								class="btn btn-xs btn-primary icon-user"></i> 我的资料 </a></li>
						<li><a href="#"> <i
								class="btn btn-xs btn-primary icon-off"></i> 退出 </a></li>
					</ul></li>
			</ul>
			<!-- /.ace-nav -->
		</div>
		<!-- /.navbar-header -->

	</div>
	<!-- /.container -->
</div>
