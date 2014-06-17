<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
		'folder'         : 'uploads',
		'queueID'        : 'fileQueue',
		'auto'           : false,
		'multi'          : true,
		'size'           : 5
	});
});
</script>
</head>

<body>
选择相册
<select>
   <option>请选择相册</option>
</select>
<div id="fileQueue"></div>
<input type="file" name="file" id="file" />  
<input type="button" value="上传所有图片" onclick="javascript:jQuery('#file').uploadifyUpload()"/>
<input type="button" value="取消上传" onclick="javascript:jQuery('#file').uploadifyClearQueue()"/>
</body>
</html>