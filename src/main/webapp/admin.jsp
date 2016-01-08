<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>管理界面</title>
<!-- basic styles -->
<link rel="shortcut icon" href="favicon.ico" />



<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<!-- <link rel="stylesheet" href="assets/css/cyrillic.css" /> -->




<!-- ace styles -->
<link rel="stylesheet" href="assets/css/ace-fonts.css" />
<link rel="stylesheet" href="assets/css/ace.min.css" />
<!-- 
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/ace-skins.min.css" /> -->

<script type="text/javascript" src="assets/js/ace-extra.min.js"></script>

<!-- <script type="text/javascript" src="assets/js/ace-elements.min.js"></script> -->

</head>

<body class="no-skin">
	<!-- #section:basics/navbar.layout -->
	<div id="navbar" class="navbar navbar-default">
		<script type="text/javascript">
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="navbar-container" id="navbar-container">
			<!-- #section:basics/sidebar.mobile.toggle -->
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">缩放边栏</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<!-- /section:basics/sidebar.mobile.toggle -->
			<div class="navbar-header pull-left">
				<!-- #section:basics/navbar.layout.brand -->
				<a href="http://www.finndy.com" class="navbar-brand"> <img
					width="118" src="http://www.finndy.com/images/logo_white.png"
					alt="发源地" /> </a>

				<!-- /section:basics/navbar.layout.brand -->

				<!-- #section:basics/navbar.toggle -->

				<!-- /section:basics/navbar.toggle -->
			</div>

			<!-- #section:basics/navbar.dropdown -->
			<div class="navbar-buttons navbar-header pull-right"
				role="navigation">
				<ul class="nav ace-nav">



					<!-- #section:basics/navbar.user_menu -->
					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <!-- <img class="nav-user-photo" src="http://www.finndy.com/ucenter_entry/avatar.php?uid=28662&rand=1452238442" alt="" /> -->
							<span class="">欢迎您： yangtao</span> <i
							class="ace-icon fa fa-caret-down"></i> </a>

						<ul
							class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li style="display:;"><a id="open-setting-box" href="#">
									<i class="ace-icon fa fa-cog"></i> 界面设置 </a></li>

							<li style="display:none;"><a href="profile.html"> <i
									class="ace-icon fa fa-user"></i> Profile </a></li>

							<li class="divider"></li>

							<li><a
								href="http://www.finndy.com/batch.login.php?action=logout&refer=http://www.finndy.com">
									<i class="ace-icon fa fa-power-off"></i> 退出 </a></li>
						</ul></li>

					<!-- /section:basics/navbar.user_menu -->
				</ul>
			</div>
			<!-- /section:basics/navbar.dropdown -->

			<nav class="navbar-menu pull-right collapse navbar-collapse"
				role="navigation">
				<!-- #section:basics/navbar.nav -->
				<ul class="nav navbar-nav">
					<li class=""><a data-toggle="dropdown" class="dropdown-toggle"
						href="#" aria-expanded="false"> 快捷菜单 &nbsp; <i
							class="ace-icon fa fa-angle-down bigger-110"></i> </a>

						<ul class="dropdown-menu dropdown-light-blue dropdown-caret">
							<li><a href="http://www.finndy.com" target="_blank"> <i
									class="ace-icon fa fa-home bigger-110 blue"></i> 官方网站 </a></li>

							<!--<li>-->
							<!--<a href="#">-->
							<!--<i class="ace-icon fa fa-book bigger-110 blue"></i>-->
							<!--帮助文档-->
							<!--</a>-->
							<!--</li>-->

							<li><a href="javascript:;"
								onclick="javascript:window.open('http://wpa.qq.com/msgrd?v=3&uin=849402826&site=qq&menu=yes&ref='+document.location,'_blank','height=544,width=644,toolbar=no,scrollbars=no,menubar=no,status=no');">
									<i class="ace-icon fa fa-user bigger-110 blue"></i> 在线客服 </a></li>
						</ul></li>

					<!--<li>
                            <a href="#">
                                <i class="ace-icon fa fa-envelope"></i>
                                通知
                                <span class="badge badge-warning"></span>
                            </a>
                        </li>-->
					<li><a
						href="http://www.finndy.com/midycp.php?action=pay&op=pay"> <i
							class="ace-icon fa fa-envelope"></i> 账户： <span
							class="badge badge-warning">0</span> 源宝 </a></li>
				</ul>


			</nav>

		</div>
	</div>
	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>
		<!-- #section:basics/sidebar -->
		<div id="sidebar" class="sidebar responsive">
			<script type="text/javascript">
				try {
					ace.settings.check('sidebar', 'fixed')
				} catch (e) {
				}
			</script>

			<div class="sidebar-shortcuts" id="sidebar-shortcuts"
				style="display:none;">
				<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					<button class="btn btn-success">
						<i class="ace-icon fa fa-signal"></i>
					</button>

					<button class="btn btn-info">
						<i class="ace-icon fa fa-pencil"></i>
					</button>

					<!-- #section:basics/sidebar.layout.shortcuts -->
					<button class="btn btn-warning">
						<i class="ace-icon fa fa-users"></i>
					</button>

					<button class="btn btn-danger">
						<i class="ace-icon fa fa-cogs"></i>
					</button>

					<!-- /section:basics/sidebar.layout.shortcuts -->
				</div>

				<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
					<span class="btn btn-success"></span> <span class="btn btn-info"></span>

					<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
				</div>
			</div>
			<!-- /.sidebar-shortcuts -->

			<ul class="nav nav-list">
				<li class=""><a
					href="http://www.finndy.com/midycp.php?action=index"> <i
						class="menu-icon fa fa-tachometer"></i> <span class="menu-text">
							首页 </span> </a> <b class="arrow"></b></li>

				<li class="open"><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-th"></i> <span class="menu-text">
							数据交易 </span> <b class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">

						<li><a href="http://www.finndy.com/midycp.php?action=robots">
								<i class="menu-icon fa fa-caret-right"></i> 源交易市场</a> <b
							class="arrow"></b>
						</li>

						<li><a
							href="http://www.finndy.com/midycp.php?action=robots&op=add">
								<i class="menu-icon fa fa-caret-right"></i> 创建数据源</a> <b
							class="arrow"></b></li>

						<li><a
							href="http://www.finndy.com/midycp.php?action=robots&op=import">
								<i class="menu-icon fa fa-caret-right"></i> 导入源规则</a> <b
							class="arrow"></b></li>


					</ul></li>



				<li class="open"><a href="#" class="dropdown-toggle"> <i
						class="menu-icon fa fa-user"></i> <span class="menu-text">
							会员中心 </span> <b class="arrow fa fa-angle-down"></b> </a> <b class="arrow"></b>

					<ul class="submenu">

						<li><a
							href="http://www.finndy.com/midycp.php?action=profile&op=email">
								<i class="menu-icon fa fa-caret-right"></i> 邮箱设置 </a> <b
							class="arrow"></b></li>

						<li><a
							href="http://www.finndy.com/midycp.php?action=profile&op=pwd">
								<i class="menu-icon fa fa-caret-right"></i> 密码设置 </a> <b
							class="arrow"></b></li>

						<li><a href="http://www.finndy.com/midycp.php?action=pay">
								<i class="menu-icon fa fa-caret-right"></i> 交易管理 </a> <b
							class="arrow"></b></li>

						<li><a
							href="http://www.finndy.com/midycp.php?action=pay&op=pay"> <i
								class="menu-icon fa fa-caret-right"></i> 在线充值 </a> <b class="arrow"></b>
						</li>

					</ul></li>

			</ul>

			<!-- #section:basics/sidebar.layout.minimize -->
			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i class="ace-icon fa fa-angle-double-left"
					data-icon1="ace-icon fa fa-angle-double-left"
					data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>

			<!-- /section:basics/sidebar.layout.minimize -->
			<script type="text/javascript">
				try {
					ace.settings.check('sidebar', 'collapsed')
				} catch (e) {
				}
			</script>
		</div>
		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<div class="main-content-inner">
				<!-- #section:basics/content.breadcrumbs -->
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch (e) {
						}
					</script>

					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">首页</a>
						</li>
						<li class="active">发源地</li>
					</ul>
					<!-- /.breadcrumb -->

					<!-- #section:basics/content.searchbox -->
					<div class="nav-search" id="nav-search" style="display: none;">
						<form class="form-search">
							<span class="input-icon"> <input type="text"
								placeholder="敬请期待 ..." class="nav-search-input"
								id="nav-search-input" autocomplete="off" readonly /> <i
								class="ace-icon fa fa-search nav-search-icon"></i> </span>
						</form>
					</div>
					<!-- /.nav-search -->

					<!-- /section:basics/content.searchbox -->
				</div>

				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">
					<!-- #section:settings.box -->
					<div class="ace-settings-container" id="ace-settings-container">
						<div class="btn btn-app btn-xs btn-warning ace-settings-btn"
							id="ace-settings-btn">
							<i class="ace-icon glyphicon glyphicon-ok bigger-110"></i>
						</div>

						<div class="ace-settings-box clearfix" id="ace-settings-box">
							<div class="pull-left width-100">
								<!-- #section:settings.skins -->
								<div class="ace-settings-item">
									<div class="pull-left">
										<select id="skin-colorpicker" class="hide">
											<option data-skin="no-skin" value="#27a2e8">#27a2e8</option>
											<option data-skin="skin-1" value="#222A2D">#222A2D</option>
											<option data-skin="skin-2" value="#C6487E">#C6487E</option>
											<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
										</select>
									</div>
									<span>&nbsp; 点击选择界面样式</span>
								</div>

								<!-- /section:settings.skins -->
							</div>
							<div class="pull-left width-50">
								<!-- #section:settings.navbar -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-navbar" /> <label class="lbl"
										for="ace-settings-navbar"> 固定顶部导航</label>
								</div>

								<!-- /section:settings.navbar -->

								<!-- #section:settings.sidebar -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-sidebar" /> <label class="lbl"
										for="ace-settings-sidebar"> 固定左则边栏</label>
								</div>

								<!-- /section:settings.sidebar -->

								<!-- #section:settings.breadcrumbs -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-breadcrumbs" /> <label class="lbl"
										for="ace-settings-breadcrumbs"> 固定页面导航</label>
								</div>

								<!-- /section:settings.breadcrumbs -->

								<!-- #section:settings.rtl -->
								<div class="ace-settings-item" style="display:none;">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-rtl" /> <label class="lbl"
										for="ace-settings-rtl"> Right To Left (rtl)</label>
								</div>

								<!-- /section:settings.rtl -->

								<!-- #section:settings.container -->
								<div class="ace-settings-item" style="display:none;">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-add-container" /> <label class="lbl"
										for="ace-settings-add-container"> Inside <b>.container</b>
									</label>
								</div>

								<!-- /section:settings.container -->
							</div>
							<!-- /.pull-left -->

							<div class="pull-left width-50">
								<!-- #section:basics/sidebar.options -->
								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-hover" /> <label class="lbl"
										for="ace-settings-hover"> 子菜单悬浮</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-compact" /> <label class="lbl"
										for="ace-settings-compact"> 收缩左则边栏</label>
								</div>

								<div class="ace-settings-item">
									<input type="checkbox" class="ace ace-checkbox-2"
										id="ace-settings-highlight" /> <label class="lbl"
										for="ace-settings-highlight"> 边栏激活样式</label>
								</div>

								<!-- /section:basics/sidebar.options -->
							</div>
							<!-- /.pull-left -->
						</div>
						<!-- /.ace-settings-box -->
					</div>
					<!-- /.ace-settings-container -->
					<!-- /section:settings.box -->
					<div class="page-header">
						<h1>
							发源地 <small> <i class="ace-icon fa fa-angle-double-right"></i>
								领先的互联网数据采集交易平台 </small>
						</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12 infobox-container">
							<div class="infobox infobox-blue">
								<div class="infobox-icon">
									<i class="ace-icon fa fa-laptop"></i>
								</div>

								<div class="infobox-data">
									<span class="infobox-data-number">1</span>
									<div class="infobox-content">我的源总数</div>
								</div>
								<div class="infobox-btn">
									<a class="btn btn-xs btn-white btn-info"
										href="http://www.finndy.com/midycp.php?crid=&cname=&cuname=yangtao&cstatus=&action=robots">管理</a>>
								</div>

							</div>

							<div class="infobox infobox-orange">
								<div class="infobox-icon">
									<i class="ace-icon fa fa-shopping-cart"></i>
								</div>

								<div class="infobox-data">
									<span class="infobox-data-number">0</span>
									<div class="infobox-content">我的源销量（当日）</div>
								</div>

								<!--<div class="stat stat-orange"></div>-->
							</div>

							<div class="infobox infobox-green">
								<div class="infobox-icon">
									<i class="ace-icon fa fa-code"></i>
								</div>

								<div class="infobox-data">
									<span class="infobox-data-number">9</span>
									<div class="infobox-content">当日API调用数</div>
								</div>

								<!--<div class="stat stat-success"></div>-->
							</div>

							<div class="infobox infobox-red">
								<div class="infobox-icon">
									<i class="ace-icon fa fa-users"></i>
								</div>

								<div class="infobox-data">
									<span class="infobox-data-number">0</span>
									<div class="infobox-content">账号余额（源宝）</div>
								</div>
								<div class="infobox-btn">
									<a class="btn btn-xs btn-white btn-danger"
										href="http://www.finndy.com/midycp.php?action=pay&op=pay">充值</a>>
								</div>
							</div>

						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->

					<div class="row">
						<div class="space-6"></div>

						<div class="col-sm-6 widget-container-col ui-sortable">
							<div class="widget-box ui-sortable-handle">
								<div class="widget-header widget-header-small">
									<h5 class="widget-title smaller">
										<i class="ace-icon fa fa-th-list blue"></i> 热门购买
									</h5>
									<div class="widget-toolbar no-border" style="display:none ;">
										更多</div>
								</div>

								<div class="widget-body">
									<div class="widget-main no-padding">
										<table class="table">
											<thead>
												<tr>
													<td class="center">ID</td>
													<td>名称</td>
													<td class="center">源宝数</td>
													<td class="center">购买次数</td>
												</tr>
											</thead>
											<tbody>

												<tr>
													<td class="center">722</td>
													<td><a
														href="http://www.finndy.com/midycp.php?action=robots&op=viewrobot&robotid=722">百姓网_北京_招_工人技工</a>
													</td>
													<td class="center">300</td>
													<td class="center">42</td>
												</tr>

												<tr>
													<td class="center">705</td>
													<td><a
														href="http://www.finndy.com/midycp.php?action=robots&op=viewrobot&robotid=705">缘创派最新创业项目</a>
													</td>
													<td class="center">50</td>
													<td class="center">35</td>
												</tr>

												<tr>
													<td class="center">724</td>
													<td><a
														href="http://www.finndy.com/midycp.php?action=robots&op=viewrobot&robotid=724">北京_招聘_家政/保洁</a>
													</td>
													<td class="center">500</td>
													<td class="center">22</td>
												</tr>

												<tr>
													<td class="center">723</td>
													<td><a
														href="http://www.finndy.com/midycp.php?action=robots&op=viewrobot&robotid=723">百姓网_北京_招_司机</a>
													</td>
													<td class="center">300</td>
													<td class="center">17</td>
												</tr>

												<tr>
													<td class="center">755</td>
													<td><a
														href="http://www.finndy.com/midycp.php?action=robots&op=viewrobot&robotid=755">百度地址经纬度查询规则</a>
													</td>
													<td class="center">800</td>
													<td class="center">8</td>
												</tr>

											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>


						<div class="col-sm-6 widget-container-col ui-sortable">
							<div class="widget-box ui-sortable-handle">
								<div class="widget-header widget-header-small">
									<h5 class="widget-title smaller">
										<i class="ace-icon fa fa-th-list blue"></i> 最新发布
									</h5>
									<div class="widget-toolbar no-border" style="display:none ;">
										更多</div>
								</div>

								<div class="widget-body">
									<div class="widget-main no-padding">
										<table class="table">
											<thead>
												<tr>
													<td class="center">ID</td>
													<td>名称</td>
													<td class="center">源宝数</td>
													<td class="center">购买次数</td>
												</tr>
											</thead>
											<tbody>

												<tr>
													<td class="center">1352</td>
													<td><a
														href="http://www.finndy.com/midycp.php?action=robots&op=viewrobot&robotid=1352">豆果美食--煲汤</a>
													</td>
													<td class="center">100</td>
													<td class="center">0</td>
												</tr>

												<tr>
													<td class="center">1351</td>
													<td><a
														href="http://www.finndy.com/midycp.php?action=robots&op=viewrobot&robotid=1351">豆果美食--私家菜谱</a>
													</td>
													<td class="center">100</td>
													<td class="center">0</td>
												</tr>

												<tr>
													<td class="center">1350</td>
													<td><a
														href="http://www.finndy.com/midycp.php?action=robots&op=viewrobot&robotid=1350">豆果美食--家常菜谱</a>
													</td>
													<td class="center">100</td>
													<td class="center">0</td>
												</tr>

												<tr>
													<td class="center">1348</td>
													<td><a
														href="http://www.finndy.com/midycp.php?action=robots&op=viewrobot&robotid=1348">新浪--国际军事</a>
													</td>
													<td class="center">10</td>
													<td class="center">0</td>
												</tr>

												<tr>
													<td class="center">1347</td>
													<td><a
														href="http://www.finndy.com/midycp.php?action=robots&op=viewrobot&robotid=1347">新浪--中国军事</a>
													</td>
													<td class="center">10</td>
													<td class="center">0</td>
												</tr>

											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>





					</div>


					<script type="text/javascript">
						window.jQuery
								|| document
										.write("<script src='assets/js/jquery-2.0.3.js'>"
												+ "<"+"/script>");
					</script>

					<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
					<script type="text/javascript" src="assets/js/ace.min.js"></script>
					<script type="text/javascript" src="assets/js/ace-elements.min.js"></script>
					<script src="assets/js/jquery-ui.custom.js"></script>
					<script src="assets/js/jquery.ui.touch-punch.js"></script>
					<script src="assets/js/jquery.easypiechart.js"></script>
					<script src="assets/js/jquery.sparkline.js"></script>
					<script src="assets/js/flot/jquery.flot.js"></script>
					<script src="assets/js/flot/jquery.flot.pie.js"></script>
					<script src="assets/js/flot/jquery.flot.resize.js"></script>




					<script type="text/javascript">
						if ('ontouchstart' in document.documentElement)
							document
									.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
											+ "<"+"/script>");
					</script>

					<!-- inline scripts related to this page -->

					<!-- Footer中可不用过滤显示debug iframe中的HTML，前文有exit()终止，功能正常即可！ -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->

		<div class="footer">
			<div class="footer-inner">
				<!-- #section:basics/footer -->
				<div class="footer-content">
					<span class="bigger-110 grey"> <span class="blue bolder"></span>
						Copyright © 2015 发源地 | 服务邮箱：service@finndy.com | 服务电话：400-035-0510
					</span>


				</div>

				<!-- /section:basics/footer -->
			</div>
		</div>

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i> </a>
	</div>
	<!-- /.main-container -->


	<div style="display:none">
		<script type="text/javascript"
			src="http://tajs.qq.com/stats?sId=27487606" charset="UTF-8"></script>
		<script src="http://s4.cnzz.com/stat.php?id=5919624&web_id=5919624"
			language="JavaScript"></script>
	</div>

	<iframe id="phpframe" name="phpframe" width="0" height="0"
		marginwidth="0" frameborder="0" src="about:blank"></iframe>

</body>
</html>
