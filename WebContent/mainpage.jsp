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
}#
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

				<li class="last current"><a>个人主页</a></li>
			</ul>

			<div id="form1" >
			<h1>Login Success!</h1>
				Welcome!
			<br> ${user.username }<br>${user.id}
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"/>


	
	
</body>
</html>