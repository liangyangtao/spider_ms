<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<div class="sidebar" id="sidebar">
	<script type="text/javascript">
		try {
			ace.settings.check('sidebar', 'fixed')
		} catch (e) {
		}
	</script>

	<div class="sidebar-shortcuts" id="sidebar-shortcuts">
		<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
			<button class="btn btn-success">
				<i class="icon-signal"></i>
			</button>

			<button class="btn btn-info">
				<i class="icon-pencil"></i>
			</button>

			<button class="btn btn-warning">
				<i class="icon-group"></i>
			</button>

			<button class="btn btn-danger">
				<i class="icon-cogs"></i>
			</button>
		</div>

		<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
			<span class="btn btn-success"></span> <span class="btn btn-info"></span>

			<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
		</div>
	</div>
	<!-- #sidebar-shortcuts -->

	<ul class="nav nav-list">
		<li class="active"><a href="admin.jsp"> <i
				class="icon-dashboard"></i> <span class="menu-text"> 首页 </span> </a></li>
		<li class="active open"><a href="#" class="dropdown-toggle">
				<i class="icon-desktop"></i> <span class="menu-text"> 数据供应 </span> <b
				class="arrow icon-angle-down"></b> </a>

			<ul class="submenu">
				<li><a href="websitelist.jsp"> <i class="icon-double-angle-right"></i>
						源供应市场 </a>
				</li>

				<li><a href="addweb.jsp"> <i
						class="icon-double-angle-right"></i> 创建数据源 </a>
				</li>
			</ul>
		</li>

		<li class="active open"><a href="#" class="dropdown-toggle">
				<i class="icon-list"></i> <span class="menu-text"> 数据需求 </span> <b
				class="arrow icon-angle-down"></b> </a>

			<ul class="submenu">
				<li><a href="#"> <i class="icon-double-angle-right"></i>
						源需求市场 </a></li>

				<li><a href="#"> <i class="icon-double-angle-right"></i>发布源需求
				</a>
				</li>
			</ul>
		</li>

		<li class="active open"><a href="#" class="dropdown-toggle">
				<i class="icon-edit"></i> <span class="menu-text"> 用户中心 </span> <b
				class="arrow icon-angle-down"></b> </a>

			<ul class="submenu">
				<li><a href="#"> <i class="icon-double-angle-right"></i>
						我的资料 </a>
				</li>

				<li><a href="#"> <i class="icon-double-angle-right"></i>
						充值取现 </a>
				</li>

				<li><a href="#"> <i class="icon-double-angle-right"></i>
						交易管理</a>
				</li>

				<li><a href="#"> <i class="icon-double-angle-right"></i>
						邮箱设置 </a>
				</li>
				<li><a href="#"> <i class="icon-double-angle-right"></i>
						密码设置 </a>
				</li>
			</ul>
		</li>
	</ul>
	<!-- /.nav-list -->

	<div class="sidebar-collapse" id="sidebar-collapse">
		<i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
			data-icon2="icon-double-angle-right"></i>
	</div>

	<script type="text/javascript">
		try {
			ace.settings.check('sidebar', 'collapsed')
		} catch (e) {
		}
	</script>
</div>