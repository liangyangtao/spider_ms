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
						<li class="active" id="home_title"></li>
						<li class="active" id="home_name">采集控制中心</li>
					</ul>
					<!-- .breadcrumb -->
					<jsp:include page="search.jsp" flush="true"></jsp:include>

					<!-- #nav-search -->
				</div>

				<div class="page-content" id="tab_show">
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
