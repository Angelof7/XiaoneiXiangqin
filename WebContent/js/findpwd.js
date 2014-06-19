$(document).ready(function(){
    	 var submit = $("#submit");
    	 submit.click(function(){
    		 if($("#studentCard").val()==""){
    			 $("#validate").html("*学号不能为空");
    			 $("#studentCard").focus();
    			 return false;
    		 }
    	 });
});