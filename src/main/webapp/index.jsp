<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<base href="<%=basePath%>">
<link rel="shortcut icon" href="favicon.ico" />
<title>Bootstrap 模板</title>
<!-- 引入 Bootstrap -->
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!-- js  -->
<script type="text/javascript" src="<%=basePath%>/js/common.js"></script>

<!--style  -->
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/common.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/font-awesome.css" />

</head>

<body>
	<jsp:include page="header.jsp" flush="true" />
	<div class="all">

		<div class="rowinner"></div>

		<div class="main content clearfix">
			<div class="demo-header clearfix">
				<div class="dright"></div>
				<div class="dleft clearfix">
					<h1 class="dtitle">
						<span><B>互联网数据</B>采集交易平台</span>
					</h1>
					<ul class="liststyle1">
						<li>优势：云端数据采集、交易及标准化API输出</li>
						<li>功能：简单快速挖掘WEB/APP数据中的价值</li>
						<li>特色：数据/规则威客众包交易模式及有效性保障等</li>
					</ul>
					<a class="reg-btn" href="#" title="">免费注册<b></b> </a>
				</div>

			</div>
			<div id="dataStatistics" class="rounded3 clearfix">
				<div class="pushbyte">
					<div class="ds-ico"></div>
					<div class="ds-caption">累计服务企业：</div>
					<div class="ds-datum">
						<i>1800</i>
					</div>
					<div class="ds-unit">家</div>
				</div>
				<div class="pushtime">
					<div class="ds-ico"></div>
					<div class="ds-caption">累计服务用户：</div>
					<div class="ds-datum c4">
						<i>28000</i>
					</div>
					<div class="ds-unit">个</div>
				</div>
				<div class="contactus">
					<div class="ds-caption">电话咨询：</div>
					<div class="ds-service">400-035-0510</div>
					<div class="ds-caption">在线客服：</div>
					&nbsp;&nbsp;<a target="_blank" href="javascript:;"
						onclick="javascript:window.open('http://wpa.qq.com/msgrd?v=3&uin=849402826&site=qq&menu=yes&ref='+document.location,'_blank','height=544,width=644,toolbar=no,scrollbars=no,menubar=no,status=no');"><img
						style="vertical-align:top;" border="0"
						src="http://www.finndy.com/images/qqservice.png" width="90"
						height="24" alt="点击联系发源地客服" title="点击联系发源地客服" /> </a>

				</div>
			</div>
			<div id="funcCase" class="rounded3 clearfix">
				<div class="col-4">
					<div class="col-box vspliter">
						<div class="fimg aicon wpay"></div>
						<h3>数据/规则交易</h3>
						<p>支持源规则及数据的交易，让数据更有价值</p>
					</div>
				</div>
				<div class="col-4">
					<div class="col-box vspliter">
						<div class="fimg aicon open"></div>
						<h3>开放API接口</h3>
						<p>云端标准化服务API输出，助您大数据轻松落地</p>
					</div>
				</div>
				<div class="col-4">
					<div class="col-box vspliter">
						<div class="fimg aicon kefu"></div>
						<h3>1200+数据源示例</h3>
						<p>微信、微博、网站及APP内信息轻松挖掘采集</p>
					</div>
				</div>
				<div class="col-4">
					<div class="col-box">
						<div class="fimg aicon life"></div>
						<h3>秒级同步</h3>
						<p>即时高效的自动化分布式平台，数据即刻获取</p>
					</div>
				</div>
				<div class="col-4">
					<div class="col-box vspliter">
						<div class="fimg aicon crm"></div>
						<h3>工具化平台</h3>
						<p>数据采集、数据存储及数据应用的完整闭环</p>
					</div>
				</div>
				<div class="col-4">
					<div class="col-box vspliter">
						<div class="fimg aicon menu"></div>
						<h3>脚本化引擎</h3>
						<p>支持自定义PHP脚本配置，实现更智能的机器人</p>
					</div>
				</div>

				<div class="col-4">
					<div class="col-box vspliter">
						<div class="fimg aicon member"></div>
						<h3>多扩展字段</h3>
						<p>支持50个信息字段采集，多维度获取数据</p>
					</div>
				</div>
				<div class="col-4">
					<div class="col-box">
						<div class="fimg aicon mstate"></div>
						<h3>数据安全</h3>
						<p>内置多重数据过滤模块及SQL/XSS过滤方案</p>
					</div>
				</div>

				<!--
<div class="col-4">
<div class="col-box vspliter">
<div class="fimg aicon weiqd"></div>
<h3>数据二维码</h3>
<p>支持二维码查看数据内容，发挥您的想象空间</p>
</div>
</div>
<div class="col-4">
<div class="col-box vspliter">
<div class="fimg aicon wpay"></div>
<h3>在线支付</h3>
<p>支持在线支付及管理功能，方便快速实现现金流</p>
</div>
</div>
<div class="col-4">
<div class="col-box vspliter">
<div class="fimg aicon app"></div>
<h3>移动客户端</h3>
<p>支持iOS/Android客户端，轻松打通移动互联网</p>
</div>
</div>
<div class="col-4">
<div class="col-box vspliter">
<div class="fimg aicon community"></div>
<h3>用户系统</h3>
<p>内置完善的用户/会员管理系统，轻松管理用户</p>
</div>
</div>
<div class="col-4">
<div class="col-box">
<div class="fimg aicon activities"></div>
<h3>精准应用案例</h3>
<p>两大类10多个实际案例，助您快速打造产品</p>
</div>
</div>-->

			</div>

			<div id="pushCategory" class="clearfix">
				<div id="contpush" class="rounded3">
					<div class="cont-info">
						<h3>数据源市场</h3>
						<p>平台已入驻几万企业及个人用户。每天使用发源地挖掘海量数据。您可以发现或使用其他用户定制的源。</p>
					</div>
					<div class="center-btn">
						<a class="data-btn" href="http://www.finndy.com/?action-robot"
							title="">发现/使用源<b></b> </a>
					</div>
				</div>
				<div id="datapush" class="rounded3">
					<div class="data-info">
						<h3>定制创建源</h3>
						<p>发源地提供基于云端的强大的数据采集、存储及数据API功能，您可以根据需求定制属于您的特色源。</p>
					</div>
					<div class="center-btn">
						<a class="cont-btn" href="http://www.finndy.com/?action-custom"
							title="">定制/创建源<b></b> </a>
					</div>
				</div>
			</div>
			<div style="height:1px;"></div>
		</div>
		<div class="rowinner"></div>
	</div>



	<jsp:include page="footer.jsp" flush="true" />
</body>

</html>
