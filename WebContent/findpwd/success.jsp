<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="../js/jquery.XYTipsWindow.2.8.js"></script>
<script type="text/javascript" language="javascript">
       $(document).ready(function(){
    	   var login = $("#login");
    	   login.click(function(){   	
    		   window.open("http://smail.nju.edu.cn");
    		   parent.$.XYTipsWindow.removeBox();  
    		   
    	   });
       });
</script>
</head>
<body>
 
密码找回成功：<a id="login" name="login" href="#" target="_blank">登录邮箱查看</a><br>
</body>
</html>