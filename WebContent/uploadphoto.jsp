<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>上传图片</title>
<link rel="stylesheet" type="text/css" href="css/uploadify.css">
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/jquery.uploadify.v2.1.0.js"></script>
<script type="text/javascript" src="js/swfobject.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#file").uploadify({
		'uploader'       : 'swf/uploadify.swf',
		'script'         : 'uploadphoto.action',
		'cancelImg'      : 'img/cancel.png',
		'folder'         : 'photo',
		'queueID'        : 'fileQueue',
		'method'         : "post",
		'auto'           : false,
		'multi'          : true,
		'size'           : 5,
		'fileDataName'   : 'file',
		'buttonText'     : 'Upload',
		'fileDesc'       : '支持格式:jpg/gif/jpeg/png/bmp.', //如果配置了以下的'fileExt'属性，那么这个属性是必须的  
	    'fileExt'        : '*.jpg;*.gif;*.jpeg;*.png;*.bmp',//允许的格式
	    'removeCompleted' : true,
	    'onAllComplete'     : function(event, queueID, fileObj, response, data){  
                         //$("#result").html(response);//显示上传成功结果  
                         //setInterval("showResult()", 2000);//两秒后删除显示的上传成功结果 
                         window.location.href="<%=basePath%>photoalbum/photoalbum.jsp";//上传成功后跳转，并传递参数  
                         } 
	});
});

</script>

</head>

<body>
<select id="photoabulm" name="photoabulm">
   <option value="" selected="selected">--请选择相册--</option>
   <option value="1">我的相册</option>
   <option value="2">我的生活</option>
</select>
<div id="fileQueue"></div>
<input type="file" name="file" id="file" />  
<input type="button" value="上传所有图片" onclick="javascript:jQuery('#file').uploadifyUpload()"/>
<input type="button" value="取消上传" onclick="javascript:jQuery('#file').uploadifyClearQueue()"/><br>
<p>${response.ResponseText}</p>
</body>
</html>