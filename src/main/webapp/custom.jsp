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
	<script language="javascript">
		function display_tips(objid) {
			var percentnum = 10;
			var tmp = 1;
			for ( var i = 1; i <= 4; i++) {
				if (objid == ("t" + i)) {
					tmp = i;
					$("t" + i).style.display = '';
				} else {
					$("t" + i).style.display = 'none';
				}
			}
			percentnum = 10 + 27 * (tmp - 1);
			$("d-detail").style.backgroundPosition = percentnum + "% top";
		}
	</script>
	<div class="all">
		<div class="rowinner">&nbsp;</div>
		<div class="column" style="background:#ffffff;">
			<div class="d-wrapper">
				<div class="d-title clearfix">
					<h1>领先数据采集交易平台</h1>
					<h3>典型问题</h3>
				</div>
				<div class="d-demand clearfix">
					<div class="colbox colfix1 rounded5" onclick="display_tips('t1');">
						<div class="d-ico"></div>
						<p>
							项目上线但没有<br>内容或启动数据？
						</p>
					</div>
					<div class="colbox colfix2 rounded5" onclick="display_tips('t2');">
						<div class="d-ico"></div>
						<p>
							每天使用手工方<br>式编辑发布内容？
						</p>
					</div>
					<div class="colbox colfix3 rounded5" onclick="display_tips('t3');">
						<div class="d-ico"></div>
						<p>
							需要海量数据用<br>于科学分析研究？
						</p>
					</div>
					<div class="colbox colfix4 rounded5" onclick="display_tips('t4');">
						<div class="d-ico"></div>
						<p>
							行业用户行为分<br>析及其市场预测？
						</p>
					</div>
				</div>
				<div id="d-detail" class="d-detail">
					<div class="dlayer rounded5">
						<p id="t1">传统方式最低成本估算：技术人员+服务器+宽带(6000元/月)。费用高且不能保证高质量完成任务。使用发源地数据挖掘服务可节省80%成本，保证项目快速上线实现产品价值！</p>
						<p id="t2" style="display:none;">产品对数据的持续性需求，使得企业或个人不得不投入大量时间及资金用于内容的运营、编辑。发源地数据挖掘帮助企业或自媒体聚焦核心业务，稳定获取高质量数据内容。</p>
						<p id="t3" style="display:none;">海量数据也有结构，透过成熟算法和统计模型，您也可以洞察复杂数据。使用数据挖掘服务您可快速拥有海量数据，高效完成科学统计及相关研究。</p>
						<p id="t4" style="display:none;">大数据时代，对数据的把握及分析能直接决定行业发展方向。对客户及行业数据的获取至关重要。发源地数据挖掘可挖掘精准数据，让您知己知彼、运筹帷幄。</p>
					</div>
				</div>

				<div class="d-title clearfix">
					<h1>高效低成本获取数据源</h1>
					<h3>开始定制</h3>
				</div>
				<div class="d-func clearfix">

					<div class="colbox colfix2 rounded5">
						<h2 class="bg_color_green">成为开发者定制</h2>
						<ul>
							<li>1、注册成为会员</li>
							<li>2、进行发源地开发者认证</li>
							<li>3、使用平台工具进行定制</li>
							<li>4、审核通过即可使用</li>
						</ul>
						<div class="d-price">
							<p>
								<span class="price">免 费</span>
							</p>
							<a href="http://www.finndy.com/?action-customin"
								class="pricebtn rounded3 bg_color_green">开始定制</a>
						</div>
					</div>
					<div class="colbox colfix1 rounded5">
						<h2 class="bg_color_blue">官方定制</h2>
						<ul>
							<li>1、联系客服提交需求</li>
							<li>2、官方定制所需源</li>
							<li>3、客户验收支付费用</li>
							<li>4、提供数据及分析输出</li>
						</ul>
						<div class="d-price">
							<p>
								<span class="price">面 议</span>
							</p>
							<a target="_blank" href="javascript:;"
								onclick="javascript:window.open('http://wpa.qq.com/msgrd?v=3&uin=849402826&site=qq&menu=yes&ref='+document.location,'_blank','height=544,width=644,toolbar=no,scrollbars=no,menubar=no,status=no');"
								class="pricebtn rounded3 bg_color_blue">联系客服</a>
						</div>
					</div>
					<div class="colbox colfix3 rounded5">
						<h2 class="bg_color_gray">提交入驻开发者定制</h2>
						<ul>
							<li>1、提交需求至平台</li>
							<li>2、入驻开发者完成定制</li>
							<li>3、客户验收支付费用</li>
							<li>4、获取数据源输出</li>
						</ul>
						<div class="d-price">
							<p>
								<span class="price">待 定</span>
							</p>
							<a href="javascript:;" class="pricebtn rounded3 bg_color_gray"
								style="cursor: default;">即将开放</a>
						</div>
					</div>
				</div>
				<div class="d-start"></div>
			</div>
		</div>
		<div class="rowinner">&nbsp;</div>
	</div>
	<jsp:include page="footer.jsp" flush="true" />



</body>
</html>
