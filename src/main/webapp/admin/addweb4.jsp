<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<div class="step-pane" id="step4">
	<p class="tabhelp">
		<i class="ace-icon fa icon-bullhorn"></i> 源基本设置（带红色*号的为必填项）。
	</p>
	<div class="row">
		<div class="col-xs-12">
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="form-field-1"> 网站名称 </label>

					<div class="col-sm-9">
						<input id="form-field-1" placeholder="新浪网"
							class="col-xs-10 col-sm-5" type="text">
					</div>
				</div>

			</form>
			<div class="space-4"></div>
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label class="col-sm-3 control-label no-padding-right"
						for="form-field-1"> 板块名称 </label>

					<div class="col-sm-9">
						<input id="form-field-1" placeholder="财经要闻"
							class="col-xs-10 col-sm-5" type="text">
					</div>
				</div>

			</form>
			<div class="space-4"></div>
		</div>
	</div>
</div>