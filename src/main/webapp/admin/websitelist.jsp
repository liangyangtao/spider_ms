<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- basic styles -->

<link href="<%=basePath%>assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="<%=basePath%>assets/css/bootstrap-table.min.css"
	rel="stylesheet" />
<%-- <link href="<%=basePath%>assets/css/bootstrap-table-zh-CN.min.css"
	rel="stylesheet" /> --%>

<link rel="stylesheet"
	href="<%=basePath%>assets/css/font-awesome.min.css" />
<!-- page specific plugin styles -->
<!-- fonts -->
<link rel="stylesheet" href="<%=basePath%>assets/css/cyrillic.css" />
<!-- ace styles -->


<link rel="stylesheet" href="<%=basePath%>assets/css/ace.min.css" />
<link rel="stylesheet" href="<%=basePath%>assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="<%=basePath%>assets/css/ace-skins.min.css" />


<!-- ace settings handler -->
<!-- basic scripts -->

<!--[if !IE]> -->

<script src="<%=basePath%>assets/js/jquery-2.0.3.min.js"></script>
<script src="<%=basePath%>assets/js/jquery.mobile.custom.min.js"></script>
<script src="<%=basePath%>assets/js/bootstrap.min.js"></script>
<script src="<%=basePath%>assets/js/bootstrap-table.min.js"></script>
<script src="<%=basePath%>assets/js/bootstrap-table-zh-CN.min.js"></script>
<script src="<%=basePath%>assets/js/typeahead-bs2.min.js"></script>
<script src="<%=basePath%>assets/js/fuelux/fuelux.wizard.min.js"></script>
<script src="<%=basePath%>assets/js/jquery.validate.min.js"></script>
<script src="<%=basePath%>assets/js/additional-methods.min.js"></script>
<script src="<%=basePath%>assets/js/bootbox.min.js"></script>
<script src="<%=basePath%>assets/js/jquery.maskedinput.min.js"></script>
<script src="<%=basePath%>assets/js/select2.min.js"></script>
<!-- page specific plugin scripts -->

<!-- ace scripts -->

<script src="<%=basePath%>assets/js/ace-elements.min.js"></script>
<script src="<%=basePath%>assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script src="<%=basePath%>assets/js/ace-extra.min.js"></script>
<script type="text/javascript">
	function sectionFormatter(value, row, index) {
	//row.websiteId
		return '<a href="#"><b>' + value + '</b></a>';
	}
	function taskFormatter(value) {
		return '<font class="label label-success arrowed-right">采集中</font>';
	}

	function optFormatter(value) {
		return '<div class="visible-md visible-lg hidden-sm hidden-xs btn-group"><button class="btn btn-xs btn-success"><i class="icon-ok bigger-120"></i></button><button class="btn btn-xs btn-info"><i class="icon-edit bigger-120"></i></button><button class="btn btn-xs btn-danger"><i class="icon-trash bigger-120"></i></button><button class="btn btn-xs btn-warning"><i class="icon-flag bigger-120"></i></button></div>';
	}

	function dateFormatter(paramDateType) {
		if (paramDateType == null) {
			return '';
		} else {
			var date = new Date(paramDateType);
			var year = date.getFullYear();
			var month = date.getUTCMonth() + 1;
			if (month < 10) {
				month = "0" + month;
			}
			var day = date.getDate();
			if (day < 10) {
				day = "0" + day;
			}
			var hours = date.getHours();
			if (hours < 10) {
				hours = "0" + hours;
			}
			var minutes = date.getMinutes();
			if (minutes < 10) {
				minutes = "0" + minutes;
			}
			var seconds = date.getSeconds();
			if (seconds < 10) {
				seconds = "0" + seconds;
			}
			var result = year + "-" + month + "-" + day + " " + hours + ":"
					+ minutes + ":" + seconds;
			return result;
		}

	}
	function getwebList() {
		var webName = $("#webName").val();
		var sectionName = $("#sectionName").val();
		$("#websiteTable").bootstrapTable(
				'refresh',
				{
					url : './../showWebsite.action?webName=' + webName
							+ '&sectionName=' + sectionName
				});
	}
	$(function($) {
		$("#webName").change(function() {
			getwebList();
		});
		$("#sectionName").change(function() {
			getwebList();
		});

	});
</script>


</head>

<body>

	<jsp:include page="navbar.jsp" flush="true" />

	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="main-container-inner">
			<a class="menu-toggler" id="menu-toggler" href="#"> <span
				class="menu-text"></span> </a>

			<jsp:include page="sidebar.jsp" flush="true"></jsp:include>

			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch (e) {
						}
					</script>

					<ul class="breadcrumb">
						<li><i class="icon-home home-icon"></i> <a href="#">首页</a></li>
						<li class="active" id="home_title">数据供应</li>
						<li class="active" id="home_name">源数据市场</li>
					</ul>
					<!-- .breadcrumb -->


					<!-- #nav-search -->
				</div>

				<div class="page-content">
					<div class="page-header">
						<h1>
							源供应市场 <small> <i class="icon-double-angle-right"></i>
								发现您想要的源 </small> <span class="pull-right inline"><span
								class="btn-toolbar inline middle no-margin"> <span
									class="btn-group no-margin"> <a href="#"
										class="btn btn-sm btn-yellow "> <i class="icon-flag"></i>我的关注
									</a> <a href="#" class="btn btn-sm btn-yellow "> <i
											class=" icon-legal"></i>我的创建 </a> </span> </span> </span>
						</h1>
					</div>
					<!-- /.page-header -->
					<!-- showWebsite.action -->
					<h4 class="pink">
						<i class="icon-hand-right icon-animated-hand-pointer blue"></i> <span
							class="input-icon">网站名称:<input type="text"
							placeholder="网站名称 " class="nav-search-input" id="webName"
							autocomplete="off" /> </span> <span class="input-icon">板块名称: <input
							type="text" placeholder="板块名称 " class="nav-search-input"
							id="sectionName" autocomplete="off" name="" /> </span>
					</h4>
					<div class="hr hr-18 dotted hr-double"></div>
					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<div class="row">
								<div class="col-xs-12">
									<div class="table-responsive">
										<!-- 	<table
											class="table table-striped table-bordered table-hover dataTable"
											id="table">

										</table> -->
										<table data-toggle="table" data-url="./../showWebsite.action"
											data-data-type="json" data-pagination="true"
											data-side-pagination="server" data-page-list="[10]"
											id="websiteTable">
											<thead>
												<tr>
													<th data-field="webName">网站名称</th>
													<th data-field="sectionName"
														data-formatter="sectionFormatter">网站板块</th>
													<th data-field="istask" data-formatter="taskFormatter">状态</th>
													<th data-field="cDate" data-formatter="dateFormatter">录入时间</th>
													<th data-field="websiteId" data-formatter="optFormatter">操作</th>
												</tr>
											</thead>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
			<!-- /.main-content -->

			<jsp:include page="ace-settings-container.jsp" flush="true"></jsp:include>
			<!-- /#ace-settings-container -->
		</div>
		<!-- /.main-container-inner -->

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="icon-double-angle-up icon-only bigger-110"></i> </a>
	</div>
	<!-- /.main-container -->
</body>
</html>
