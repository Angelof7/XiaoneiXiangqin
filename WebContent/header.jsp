<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="apple-touch-icon-precomposed" href="logo_ipad.png" />
<link rel="shortcut icon" href="img/favicon.ico" />
<link rel="stylesheet" href="css/main.min.css" />
<link rel="stylesheet" href="css/page.min.css" />
<script>
	function change(id) {
		for (var i = 1; i < 6; i++) {
			if (i != id)
				document.getElementById("nav_" + i).setAttribute("class", "");
		}
		document.getElementById("nav_" + id).setAttribute("class", "current");
	}
</script>

</head>
<body>
	<header id="header" class="header" data-log="navi">
	<div class="header-inner">
		<h1 class="header-logo">
			<a href="#">南哪儿遇见你</a>
		</h1>
		<ul class="header-navi">
			<li id="nav_1"><a href="#" onclick="change(1)"><span>推荐</span></a></li>
			<li id="nav_2"><a href="#" onclick="change(2)"><span>缘友动态</span></a></li>
			<li id="nav_3"><a href="search" onclick="change(3)"><span>寻寻觅觅</span></a></li>
			<li id="nav_4"><a href="#" onclick="change(4)"><span>搭讪广场</span></a></li>
			<li id="nav_5" class="current"><a href="mainpage"
				onclick="change(5)"><span>个人主页</span></a></li>
		</ul>

		<div class="header-info js-header-info">

			<span class="header-info-line"></span>
			<div class="header-info-user js-info-user">
				<span class="header-info-title"> <em class="icon-header-user"></em>
				</span>
				<div class="header-info-list header-info-setting-list">
					<ul>
						<li><a href="password"><span>修改密码</span></a></li>
						<li><a href="#"><span>会员服务中心</span></a></li>

						<li class="line"></li>
						<li><a href="exit"><span>退出</span></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</header>

</body>
</html>