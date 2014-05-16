<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="apple-touch-icon-precomposed" href="logo_ipad.png" />
<link rel="shortcut icon" href="img/favicon.ico"/>
<link rel="stylesheet" href="css/main.min.css" />
<link rel="stylesheet" href="css/page.min.css" />
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>

<style>
#codeImg{
	cursor:pointer;
}
#form1{
	font-size: 16;
	margin-left: auto;
	margin-right: auto;
	width:400px; 
	height:200px;
}
</style>

<script type="text/javascript">
	function changeImg() {
		$("#codeImg").attr("src", "checkcode.action?d=" + new Date().valueOf());
	}
</script>

</head>
<body>
	<jsp:include page="header.jsp"/>


	<div class="contentBox">
		<div class="contentBox-inner">
			<ul class="tabBar">

				<li class="last current"><a>修改密码</a></li>
			</ul>

			<div id="form1" >
			<form action="changePwd">
				原密码：<input type="password" name="oldpwd"/> <br/>
				新密码：<input type="password" name="newpwd"/> <br/>
				再输次：<input type="password" name="newpwd2"/> <br/>
				验证码：<input type="text" name="checkcode"/>
				<img src="checkcode.action" alt="验证码" id="codeImg" onclick="changeImg()" />
				<a href="javascript:void(0);" onclick="changeImg()" style="text-decoration:underline;">看不清?换一个</a>
				<br/>
				<input type="submit" value="提交"/>
			</form>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"/>
</body>
</html>