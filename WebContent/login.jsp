<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>用户登录</title>
<link type="text/css" rel="stylesheet" href="css/login.css" />

<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/lgoin.js"></script>
</head>

<body>
	<form name="loginform" action="login">
		<div id="main">
			<div id="bg">
				<span id="title">南大遇见你</span> <span id="msg"></span> <span
					id="userimg"></span> <input type="text" id="userName" name="id" />
				<span id="pwimg"></span> <input type="password" id="password"
					name="password" /> <span onclick="document.loginform.submit()"
					id="login" class="login">登 陆</span><a href="register.jsp"style="text-decoration: none;"> <span
					id="register" class="login">注 册</span></a>
			</div>
		</div>
	</form>
</body>

</html>