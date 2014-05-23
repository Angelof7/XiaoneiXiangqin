$(document).ready(function(){
    	 var submit = $("#submit");
    	 submit.click(function(){
    		 if($("#email").val()==""){
    			 $("#validate").html("*邮箱不能为空");
    			 $("#email").focus();
    			 return false;
    		 }
    	 });
});