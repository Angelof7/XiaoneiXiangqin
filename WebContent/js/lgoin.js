// JavaScript Document

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
		
	}).mousemove(function(){
		$(this).css("background-position","-138px");
	}).mouseout(function(){
		$(this).css("background-position","0px");
	});
    
  //绑定登陆按钮点击事件，移入事件，移出事件
    $("#register").click(function(){
		
	}).mousemove(function(){
		$(this).css("background-position","-138px");
	}).mouseout(function(){
		$(this).css("background-position","0px");
	});
		
	
});
