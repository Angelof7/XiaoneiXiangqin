<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>补充个人资料</title>
</head>
<body>
	<form action="profile" name="profileForm" method="post">
 	 学号<input id="studentcard" name="studentcard" type="text" ><br>
 	 姓名<input id="studentname" name="studentname" type="text"><br>
 	性别<input id="sex" name="sex" type="text"><br>
 	住址<input id="address" name="address" type="text"><br>
 	自我说明<input id="signuature" name="signuature" type="text"><br>
 	<input id="submit" name="submit" type="submit" value="提交">
    </form>
</body>
</html>