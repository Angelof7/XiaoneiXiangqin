// JavaScript Document
// 作者QQ 496928838 博客 http://wl.125.la 
$(document).ready(function(e) {
	//获取用户文本框
	var userName=$("#userName");
	//获取用户密码框
	var password=$("#password");
	//获取文本框前面图片
	var userimg=$("#userimg");
	//获取密码框前面图片
	var pwimg=$("#pwimg");
	
	//给用户文本框置焦点
	userName.focus();
	
	//绑定用户文本框焦点事件，失去焦点事件，按下某件事件
	userName.focus(function(){
		userimg.css("background-position","0px");
	}).blur(function(){
		userimg.css("background-position","-33px");
	}).keypress(function(e){
		var key=e.which;
		if(key==13){
			password.focus();
		}
	});
	
	//绑定密码文本框焦点事件，失去焦点事件，按下某件事件
	password.focus(function(){
		pwimg.css("background-position","-66px");
		
	}).blur(function(){
		pwimg.css("background-position","-99px");
	}).keypress(function(e){
		var key=e.which;
		if(key==13){
			$("#login").click();
		}
	});

	//绑定登陆按钮点击事件，移入事件，移出事件
    $("#login").click(function(){
		//获取用户名称
		var strUsetName = $("#userName").val();
		//获取用户输入密码
		var strPassword = $("#password").val();

		var msg=$("#msg");
		
		$.ajax({
			url:'admin.php?m=admin&a=login',
			type:'POST',
			dataType:'json',
			data:{
				userName:strUsetName,
				password:strPassword
			},
			success: function(json){
				if (json.state=='ok') {	
					msg.html("登陆成功");
				}else{
					msg.html(json.error);	
				}
			}
			
		});
	}).mousemove(function(){
		$(this).css("background-position","-138px");
	}).mouseout(function(){
		$(this).css("background-position","0px");
	});
		
	
});
