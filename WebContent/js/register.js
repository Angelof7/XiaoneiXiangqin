$(document).ready(function(){
	var submit = $("#submit");
    submit.click(function(){
    	var reg = new RegExp("\w{2}\d{7}");
    	if($("#studentCard").val()==""){
    		$("#validate").html("*学号不能为空");
    		$("#studentCard").focus();
    		return false;
    	}else if(!reg.test($("#studentCard"))){
    		$("#validate").html("*输入的学号不正确");
    		$("#studentCard").focus();
    	    return false;
    	}
    });
  });