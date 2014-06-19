$(document).ready(function(){
	var submit = $("#submit");
    submit.click(function(){
    	if($("#studentCard").val()==""){
    		$("#validate").html("*学号不能为空");
    		$("#studentCard").focus();
    		return false;
    	}else if($("#checkcode").val()==""){
    		alert($("#checkcode"));
    		$("#validate").html("*验证码不能为空");
    		$("#checkcode").focus();
    		return false;
    	}
    });
  });