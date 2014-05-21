<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../js/register.js"></script>
</head>
<body>
    <h3>欢迎注册南大相亲网站</h3>
    <form action="register" name="registerForm" method="post" id="form" name="form">
    学号<input id="studentCard" name="studentCard" type="text" ><font color="red"><label id="validate"></label></font><br>
 <input id="submit" name="submit" type="submit" value="提交" onclick="return check()">
    
    </form>
</body>
</html>