<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>找回密码</title>
<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="../js/jquery.XYTipsWindow.2.8.js"></script>
<script type="text/javascript" src="../js/findpwd.js"></script>
</head>

<body>
     <div id="findPwdDiv" name="findPwDiv" width="80%" align="center"> 
          <h3>找回密码</h3>
          <form action="findpwd" method="get" id="formPwd">
              请输入你的学号：<input id="studentCard" type="text" name="studentCard"><br>
              <font color="red"><label id="validate">${mesg }</label></font><br>
              <input type="submit" id="submit" name="submit" value="找回密码"><br><br><br>
              <label>*密码会发到你的学校邮箱内，<br>请注意查收</label>
          </form>
     </div>
</body>
</html>