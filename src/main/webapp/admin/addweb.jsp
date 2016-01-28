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
<script src="<%=basePath%>layer/layer.js"></script>


<script type="text/javascript">
	function fillContent() {
		var webModel = $("input[name='webModel']:checked").val();
		var checkUrl = $("#url_select option:selected").val();
		var checkTitleCssPath = $("#url_select option:selected").text();
		var checkTimeCssPath = $("#checkTimeCssPath").val();
		var checkTextCssPath = $("#checkTextCssPath").val();
		var contentMap = $.ajax({
			type : "POST",
			url : "./../feathContent.action",
			data : "urlHome=" + checkUrl + "&webModel=" + webModel
					+ "&checkTitleCssPath=" + checkTitleCssPath
					+ "&checkTimeCssPath=" + checkTimeCssPath
					+ "&checkTextCssPath" + checkTextCssPath,
			async : false
		}).responseText;

		contentMap = eval("(" + contentMap + ")");
		contentMap = contentMap.contentMap;
		var title = contentMap.title;
		var content = contentMap.content;
		var time = contentMap.time;
		$("#title").html(title);
		$("#time").html(time);
		$("#content").html(content);

	}

	function fillurlcheckList() {
		var webModel = $("input[name='webModel']:checked").val();
		var strCode = $("#url_home").val();
		var checkListText = $("#checkListText").val();
		var checkListCssPath = $("#checkListCssPath").val();
		var urlListMap = $.ajax({
			type : "POST",
			url : "./../feathUrlList.action",
			data : "urlHome=" + strCode + "&webModel=" + webModel
					+ "&checkListText=" + checkListText,
			async : false
		}).responseText;
		urlListMap = eval("(" + urlListMap + ")");
		var urlList = urlListMap.urlList;
		if (urlList.length == 0) {
			layer.alert("该网站不支持");
			return false;
		}
		var ullist = '';
		var selectList = '';
		for ( var i = 0; i < urlList.length; i++) {
			var temp = '<li><i class="icon-caret-right blue" ></i>'
					+ urlList[i] + '</li>';
			console.log(urlList[i]);
			var href = urlList[i].match('http*.*?"');
			href = href[0].substring(0, href[0].length - 1);
			var text = urlList[i].match('>.*<');
			text = text[0].substring(1, text[0].length - 1);
			var temp2 = '<option value="'+href+'">' + text + '</option>';
			ullist += temp;
			selectList += temp2;
		}
		$('#urlcheckList').html(ullist);
		$('#url_select').html(selectList);
	}

	jQuery(function($) {

		$('[data-rel=tooltip]').tooltip();

		var $validation = false;
		$('#fuelux-wizard').ace_wizard().on('change', function(e, info) {
			var strCode = $("#url_home").val();
			if (info.step == 1) {
				var fdStart = strCode.indexOf("http");
				if (fdStart == -1) {
					layer.alert("请重新输入正确的网址！！");
					return false;
				} else {
					var html = $.ajax({
						type : "POST",
						url : "./../checkUrl.action",
						data : "urlHome=" + strCode,
						async : false
					}).responseText;
					if (html.indexOf("true") > -1) {
						layer.alert("有人已经帮你录入了，可以在你的标记中查看");
						return false;
					} else {
						fillurlcheckList();
					}
				}

			} else if (info.step == 2) {

				fillContent();
				return false;
			} else if (info.step == 3) {
				return false;
			}

			if (info.step == 1 && $validation) {
				if (!$('#validation-form').valid())
					return false;
			}
		}).on('finished', function(e) {
			bootbox.dialog({
				message : "谢谢，您的数据源已经保存",
				buttons : {
					"success" : {
						"label" : "OK",
						"className" : "btn-sm btn-primary"
					}
				}
			});

		}).on('stepclick', function(e) {
			//return false;//prevent clicking on steps
		});

		$("#webModelRadio").change(function() {
			fillurlcheckList();
		});

		$("#url_select").change(function() {
			fillContent();
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
						<li><i class="icon-home home-icon"></i> <a href="#">首页</a>
						</li>
						<li class="active" id="home_title">数据供应</li>
						<li class="active" id="home_name">创建数据源</li>
					</ul>
					<!-- .breadcrumb -->

					<%-- <jsp:include page="search.jsp" flush="true"></jsp:include> --%>
					<!-- #nav-search -->
				</div>

				<div class="page-content" id="tab_show">
					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<div class="row-fluid">
								<div class="span12">
									<div class="widget-box">
										<div
											class="widget-header widget-header-blue widget-header-flat">
											<h4 class="lighter">创建数据源</h4>
										</div>

										<div class="widget-body">
											<div class="widget-main">
												<div id="fuelux-wizard" class="row-fluid"
													data-target="#step-container">
													<ul class="wizard-steps">
														<li data-target="#step1" class="active"><span
															class="step">1</span> <span class="title">录入列表页网址</span>
														</li>

														<li data-target="#step2"><span class="step">2</span>
															<span class="title">获取新闻列表页</span>
														</li>

														<li data-target="#step3"><span class="step">3</span>
															<span class="title">获取新闻属性</span>
														</li>

														<li data-target="#step4"><span class="step">4</span>
															<span class="title">填入数据来源</span>
														</li>
													</ul>
												</div>

												<hr />
												<div class="step-content row-fluid position-relative"
													id="step-container">
													<jsp:include page="addweb1.jsp" flush="true"></jsp:include>
													<jsp:include page="addweb2.jsp" flush="true"></jsp:include>
													<jsp:include page="addweb3.jsp" flush="true"></jsp:include>
													<jsp:include page="addweb4.jsp" flush="true"></jsp:include>


												</div>

												<hr />
												<div class="row-fluid wizard-actions">
													<button class="btn btn-prev">
														<i class="icon-arrow-left"></i> 上一步
													</button>

													<button class="btn btn-success btn-next" data-last="完成 ">
														下一步 <i class="icon-arrow-right icon-on-right"></i>
													</button>
												</div>
											</div>
											<!-- /widget-main -->
										</div>
										<!-- /widget-body -->
									</div>
								</div>
							</div>
							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
						<!-- /.col -->
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
