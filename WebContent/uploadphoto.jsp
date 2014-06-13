<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>上传图片</title>
<link rel="stylesheet" type="text/css" href="css/uploadify.css">
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/jquery.uploadify.v2.1.0.js"></script>
<script type="text/javascript" src="js/swfobject.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#uploadify").uploadify({
		'uploader'       : 'swf/uploadify.swf',
		'script'         : 'scripts/uploadify.php',
		'cancelImg'      : 'cancel.png',
		'folder'         : 'uploads',
		'queueID'        : 'fileQueue',
		'auto'           : false,
		'multi'          : true
	});
});
</script>
</head>

<body>
<div id="fileQueue"></div>
<input type="file" name="uploadify" id="uploadify" />
<p><a href="javascript:jQuery('#uploadify').uploadifyClearQueue()">Cancel All Uploads</a></p>
<p><a href="javascript:jQuery('#uploadify').uploadifyUpload()">Submit All Uploads</a></p>
</body>
</html>