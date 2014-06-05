<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>上传图片</title>
<link rel="stylesheet" type="text/css" href="css/uploadify.css">
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/jquery.uploadify.v2.1.0.min.js"></script>
<script type="text/javascript" src="js/swfobject.js"></script>
</head>
<body>
    <h1>Uploadify Demo</h1>
	<form>
		<div id="queue"></div>
		<input id="file_upload" name="file_upload" type="file" multiple="true">
		 <p>
			<a href="javascript:jQuery('#uploadify').uploadifyUpload()">开始上传</a> 
			<a href="javascript:jQuery('#uploadify').uploadifyClearQueue()">取消所有上传</a>
	    </p>
	</form>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#file_upload').uploadify({
				'method':'GET',
				'swf': './swf/uploadify.swf',
				'script' : 'uploadphoto',
				'floder': 'upload',
				'queueSizeLimit' : 5,  
	            'fileDesc' : 'jpg.',  
	            'fileExt' : '*.jpg;*.gif,*.png', //控制可上传文件的扩展名，启用本项时需同时声明fileDesc  
	            'auto' : false,  
	            'multi' : true
			});
		});
	</script>
</body>
</html>