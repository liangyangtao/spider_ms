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
		<div class="rowinner">&nbsp;</div>
		<div class="column global_module bg_fff">
			<div class="global_module3_caption">
				<h3>
					你的位置：<a href="#">用户注册</a>
				</h3>
			</div>
			<div id="registerbox" class="clearfix">
				<div class="box_l">
					<!-- <div class="regi_caption">
<h1>注册发源地，免费推送您关注的信息</h1>
</div> -->
					<div class="regi_content">
						<form id="registerform" name="registerform"
							action="http://www.finndy.com/do.php?action=4bfcb4163ede334018408131e65fec69"
							method="post" onSubmit="return checkClause(this)">
							<table>
								<tbody>
									<tr>
										<th width="100">用户名</th>
										<td><input size="30" type="text" onblur="checkUserName()"
											class="input_tx" value="" id="username" name="username"
											tabindex="1" /> <span id="checkusername" class="warning">&nbsp;</span>
										</td>
									</tr>
									<tr>
										<th>密码</th>
										<td>
											<p>
												<input size="30" type="password" onblur="checkPassword()"
													onkeyup="checkPwd(this.value);" class="input_tx" value=""
													name="password" id="password" maxlength="20" tabindex="2" />
												<span id="checkpassword">&nbsp;</span>
											</p>
											<style>
.psdiv0,.psdiv1,.psdiv2,.psdiv3,.psdiv4 {
	position: relative;
	height: 30px;
	color: #666
} /*密码强度容器*/
.strongdepict {
	position: absolute;
	width: 300px;
	left: 0px;
	top: 3px
} /*密码强度固定文字*/
.strongbg {
	position: absolute;
	left: 0px;
	top: 22px;
	width: 202px !important;
	width: 202px;
	height: 10px;
	background-color: #E0E0E0;
	font-size: 0px;
	line-height: 0px
} /*灰色强度背景*/
.strong {
	float: left;
	font-size: 0px;
	line-height: 0px;
	height: 10px
} /*色块背景*/
.psdiv0 span {
	display: none
}

.psdiv1 span {
	display: inline;
	color: #F00
}

.psdiv2 span {
	display: inline;
	color: #C48002
}

.psdiv3 span {
	display: inline;
	color: #2CA4DE
}

.psdiv4 span {
	display: inline;
	color: #063
}

.psdiv0 .strong {
	width: 0px
}

.psdiv1 .strong {
	width: 25%;
	background-color: #F00
}

.psdiv2 .strong {
	width: 50%;
	background-color: #F90
}

.psdiv3 .strong {
	width: 75%;
	background-color: #2CA4DE
}

.psdiv4 .strong {
	width: 100%;
	background-color: #063
}
</style>
											<div class="psdiv0" id="chkpswd">
												<div class="strongdepict">
													密码安全程度：<span id="chkpswdcnt">太短</span>
												</div>
												<div class="strongbg">
													<div class="strong"></div>
												</div>
											</div></td>
									</tr>
									<tr>
										<th>确认密码</th>
										<td><input size="30" type="password"
											onblur="checkPassword2()" class="input_tx" value=""
											id="password2" name="password2" tabindex="3" /> <span
											class="warning" id="checkpassword2">&nbsp;</span>
										</td>
									</tr>
									<tr>
										<th>邮箱</th>
										<td><input size="30" type="text" class="input_tx"
											id="email" name="email" value="@" tabindex="4" />
										</td>
									</tr>
									<tr>
										<th>验证码</th>
										<td><input id="seccode" class="input_tx" type="text"
											autocomplete="off" tabindex="5" onblur="checkSeccode()"
											size="12" value="" name="seccode" />&nbsp; <script>seccode();</script>
											<span id="checkseccode" class="warning">&nbsp;</span></td>
									</tr>
									<tr>
										<th></th>
										<td><div name="rule"
												style="display:none;border:1px solid #C3C3C3;width:500px;height:100px; margin-bottom:5px;overflow:auto;padding:5px;">注册服务条款</div>
											<input type="checkbox" name="accede" id="accede" value="1"
											checked> <label for="accede"> 我已阅读并接受<a
												href="policy.html" target="_blank">《发源地服务条款》</a>
										</label> <script type="text/javascript">
function checkClause() {
if($('accede').checked) {
ajaxpost('registerform', 'register');
//ajaxpostmidy('registerform', 'register');
return false;
} else {
Msg("您必须同意服务条款后才能注册");
return false;
}
}
</script></td>
									</tr>
									<tr>
										<th></th>
										<td><input type="hidden" name="formhash" value="53ec4003" />
											<input type="hidden" name="refer"
											value="http://www.finndy.com/?action-login" /> <input
											type="hidden" id="registersubmit" name="registersubmit"
											value="注册" /> <input type="submit" value="注&nbsp;&nbsp;册"
											class="input_register seabtn rounded3" tabindex="6" /> <!-- <div id="ajaxwaitid" style=""></div> -->
										</td>
									</tr>
									<tr>
										<th>&nbsp;</th>
										<td id="__registerform" style="color:red; font-weight:bold;"></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
					<!--register end-->
				</div>
				<div class="box_r">
					<div class="rightbox">
						<!-- <h2>提 示</h2> -->
						已有帐号？ <input
							onclick='window.location.href="http://www.finndy.com/?action-login";'
							class="input_register_long seabtn rounded3" type="button"
							value="立即登录" name="login" /> <br>
						<br>
						<p>
							您也可以使用社交账号直接登录：<br>
							<br> <a href="http://www.finndy.com/oauthlogin/qq/"><img
								src="http://www.finndy.com/oauthlogin/qq/qq_login_large.png">
							</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
								href="http://www.finndy.com/oauthlogin/sina/"><img
								src="http://www.finndy.com/oauthlogin/sina/weibo_login_large.png">
							</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<!--column end-->
		<div class="rowinner">&nbsp;</div>
	</div>
	<!--pagebody end-->

	<script type="text/javascript">$('username').focus();
function register(show_id, result) {
if(result) {//返回字符s含<ajaxok>
$('registersubmit').disabled = true;
window.location.href = "http://www.finndy.com/?action-login";
} else {
updateseccode();
}
}
var lastUserName = lastPassword = lastEmail = lastSecCode = '';
function checkUserName() {
var cu = $('checkusername');
var userName = trim($('username').value);
if(userName == lastUserName) { //修复原bug:和上次输入name一样时再点击input框总提示用户名需3-15个字符 
return;
} else {
lastUserName = userName;
}
var unLen = userName.replace(/[^\x00-\xff]/g, "**").length;
if(!$('username').value.match(/^[0-9a-zA-Z_]+$/)){ 
warning(cu, '只允许字母数字下划线');
return;
}
if($('username').value.length == 0||unLen < 3 || unLen > 15){ 
warning(cu, '用户名需3-15个字符');
return;
}
//ajaxresponse('checkusername', 'op=checkusername&username=' + (is_ie && document.charset == 'utf-8' ? encodeURIComponent(userName) : userName));//重复添加inajax=1避免&#等字符截断ajax标识导致xml错误
ajaxresponse('checkusername', 'inajax=1&op=checkusername&username=' + (is_ie && document.charset == 'utf-8' ? encodeURIComponent(userName) : userName));

}
function checkPassword(confirm) {
//参数confirm用于checkPassword2中的checkPassword(true)，下同
var password = $('password').value;
if(!confirm && password == lastPassword) {
return;
} else {
lastPassword = password;
}
var cp = $('checkpassword');
if(password == '' || /[\'\"\\]/.test(password)) {
warning(cp, '密码空或包含非法字符');
return false;
} else if (password.length > 20 || password.length < 6) {
warning(cp, '长度不符合要求');
return false;
} else {
cp.style.display = '';
cp.innerHTML = '<img style="vertical-align:middle;" src="images/tips_ok.png" width="16" height="16">';
if(!confirm) {
checkPassword2(true);
}
return true;
}
}
function checkPassword2(confirm) {
var password = $('password').value;
var password2 = $('password2').value;
var cp2 = $('checkpassword2');
if(password2 != '') {
checkPassword(true);
}
if(password == '' || (confirm && password2 == '')) {
cp2.style.display = 'none';
return;
}
if(password != password2) {
warning(cp2, '两次输入的密码不一致');
} else {
cp2.style.display = '';
cp2.innerHTML = '<img style="vertical-align:middle;" src="images/tips_ok.png" width="16" height="16">';
}
}
function checkSeccode() {
var seccodeVerify = $('seccode').value;
if(seccodeVerify == lastSecCode) {
return;
} else {
lastSecCode = seccodeVerify;
}
ajaxresponse('checkseccode', 'op=checkseccode&seccode=' + (is_ie && document.charset == 'utf-8' ? encodeURIComponent(seccodeVerify) : seccodeVerify));
}
function ajaxresponse(objname, data) {
var x = new Ajax('XML', objname);
x.get('http://www.finndy.com/do.php?action=4bfcb4163ede334018408131e65fec69&' + data, function(s){
var obj = $(objname);
if(trim(s) == 'succeed') {
obj.style.display = '';
obj.innerHTML = '<img style="vertical-align:middle;" src="images/tips_ok.png" width="16" height="16">';
obj.className = "warning";
} else {
warning(obj, s);
}
});
}
function warning(obj, msg) {
if((ton = obj.id.substr(5, obj.id.length)) != 'password2') { //'checkpassword'.substr(5,13)='password'
$(ton).select();//input select
}
obj.style.display = '';
obj.innerHTML = '<img style="vertical-align:middle;" src="images/tips_fail.png" width="16" height="16">&nbsp;' + msg;
obj.className = "warning";
}

function checkPwd(pwd){

if (pwd == "") {
$("chkpswd").className = "psdiv0";
$("chkpswdcnt").innerHTML = "";
} else if (pwd.length < 6) { //原为3
$("chkpswd").className = "psdiv1";
$("chkpswdcnt").innerHTML = "密码由6-20个字符组成";
} else if(!isPassword(pwd) || !/^[^%&]*$/.test(pwd)) {
$("chkpswd").className = "psdiv0";
$("chkpswdcnt").innerHTML = "";
} else {
var csint = checkStrong(pwd);
switch(csint) {
case 1:
$("chkpswdcnt").innerHTML = "很弱";
$( "chkpswd" ).className = "psdiv"+(csint + 1);
break;
case 2:
$("chkpswdcnt").innerHTML = "一般";
$( "chkpswd" ).className = "psdiv"+(csint + 1);
break;
case 3:		
$("chkpswdcnt").innerHTML = "很强";
$("chkpswd").className = "psdiv"+(csint + 1);
break;
}
}
}
function isPassword(str){
if (str.length < 3) return false;
var len;
var i;
len = 0;
for (i=0;i<str.length;i++){
if (str.charCodeAt(i)>255) return false;
}
return true;
}
function charMode(iN){ 
if (iN>=48 && iN <=57) //数字 
return 1; 
if (iN>=65 && iN <=90) //大写字母 
return 2; 
if (iN>=97 && iN <=122) //小写 
return 4; 
else 
return 8; //特殊字符 
} 
//计算出当前密码当中一共有多少种模式 
function bitTotal(num){ 
modes=0; 
for (i=0;i<4;i++){ 
if (num & 1) modes++; 
num>>>=1; 
} 
return modes; 
} 

//返回密码的强度级别 
function checkStrong(pwd){ 
modes=0; 
for (i=0;i<pwd.length;i++){ 
//测试每一个字符的类别并统计一共有多少种模式. 
modes|=charMode(pwd.charCodeAt(i)); 
} 
return bitTotal(modes);
}
</script>
	<jsp:include page="footer.jsp" flush="true" />
</body>
</html>
