<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
				<h3>你的位置：站点登录</h3>
			</div>
			<div id="login">
				<div class="box_l">
					<form id="loginform" method="post"
						action="http://www.finndy.com/batch.login.php?action=login">
						<table>
							<tr>
								<th>用户名</th>
								<td><input size="30" type="text" class="input_tx" value=""
									name="username" /></td>
							</tr>
							<tr>
								<th>密&nbsp;&nbsp;&nbsp;码</th>
								<td><input size="30" type="password" class="input_tx"
									value="" name="password" /></td>
							</tr>
							<tr>
								<th>验证码</th>
								<td><input id="seccode" class="input_tx" type="text"
									autocomplete="off" onblur="checkSeccode()" size="12" value=""
									name="seccode" />&nbsp; <script>seccode();</script> <span
									id="checkseccode" class="warning">&nbsp;</span>
								</td>
							</tr>
							<tr>
								<th></th>
								<td><label class="label_remember" for="cookietime"><input
										id="cookietime" type="checkbox" value="315360000"
										name="cookietime" class="input_remember" checked /><strong
										class="remember-label">记住登录状态</strong> </label>
								</td>
							</tr>
							<tr>
								<th></th>
								<td><input class="input_register seabtn rounded3"
									type="submit" value="登 录" name="loginsubmit" /> <input
									type="hidden" name="loginsubmit" value="true" /> <input
									type="hidden" name="refer" value="http://www.finndy.com" /> <input
									type="hidden" name="formhash" value="53ec4003" />
								</td>
							</tr>
						</table>
					</form>
				</div>
				<div class="box_r">
					<div class="rightbox">
						<!-- <h2>提 示</h2> -->
						还没有帐号吗？ <input
							onclick='window.location.href = "http://www.finndy.com/do.php?action=4bfcb4163ede334018408131e65fec69";'
							class="input_register_long seabtn rounded3" type="button"
							value="开始注册" name="register" /> <br> <br> 忘记了帐号密码？ <a
							href="http://www.finndy.com/do.php?action=lostpasswd">点击申请找回密码</a>
						<br> <br>
						<p>
							您也可以使用社交账号登录：<br> <br> <a
								href="http://www.finndy.com/oauthlogin/qq/"><img
								src="http://www.finndy.com/oauthlogin/qq/qq_login_large.png">
							</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
								href="http://www.finndy.com/oauthlogin/sina/"><img
								src="http://www.finndy.com/oauthlogin/sina/weibo_login_large.png">
							</a>
						</p>
					</div>
				</div>
			</div>
			<!--login end-->

		</div>
		<!--column end-->
		<div class="rowinner">&nbsp;</div>
	</div>

	<script type="text/javascript">    var lastSecCode = '';
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
                obj.innerHTML = '<img style="vertical-align:middle;" src="images/base/tips_ok.png" width="16" height="16">';
                obj.className = "warning";
            } else {
                warning(obj, s);
            }
        });
    }
    function warning(obj, msg) {
        if((ton = obj.id.substr(5, obj.id.length)) != 'password2') {
            $(ton).select();
        }
        obj.style.display = '';
        obj.innerHTML = '<img style="vertical-align:middle;" src="images/tips_fail.png" width="16" height="16">&nbsp;' + msg;
        obj.className = "warning";
    }
</script>
	<jsp:include page="footer.jsp" flush="true" />
</body>
</html>
