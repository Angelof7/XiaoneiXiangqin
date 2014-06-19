<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../js/register.js"></script>
<script type="text/javascript" language="javascript">
function changeImg() {
	$("#codeImg").attr("src", "checkcode.action?d=" + new Date().valueOf());
}
</script>
</head>
<body>
  <div align="center">
    <h3>欢迎注册南大相亲网站</h3>
    <form action="register" name="registerForm" method="post" id="form" name="form">
  学  号:<input id="studentCard" name="studentCard" type="text" ><br>
 验证码:<input id="checkcode" name="checkcode" placeholder="输入右边的验证码" type="text" size="9" />
    <img src="checkcode.action" alt="验证码" id="codeImg" alt="change" onclick="changeImg()" /><br>
    <font color="red"><label id="validate">${mesg}</label></font><br>
 <input id="submit" name="submit" type="submit" value="马上注册">
 <br>
 <br>
 <br>
 <br>
 <h5>提示：注册完，请登录学校邮箱获取密码登录!<br>谢谢您的注册</h5>
    
    </form>
   </div>
</body>
</html>