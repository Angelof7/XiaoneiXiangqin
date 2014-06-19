<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>寻寻觅觅</title>
<link rel="apple-touch-icon-precomposed" href="logo_ipad.png" />
<link rel="shortcut icon" href="img/favicon.ico" />
<link rel="stylesheet" href="css/main.min.css" />
<link rel="stylesheet" href="css/page.min.css" />
<link type="text/css" rel="Stylesheet" href="css/jquery.validity.css" />

<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/jquery.validity.js"></script>

<script type="text/javascript">
	function loadInfo() {
		$("#info").load("loadInfo", {
			"province" : "0",
			"city" : "0",
			"age_min" : $("#age_min").val(),
			"age_max" : $("#age_max").val()
		}, function(response, status) {
			if (status == "success") {
				var searchObj = eval('(' + response + ')');
				document.getElementById("mainBox_ul").innerHTML = "";
				for (var i = 0; i < searchObj.pis.length; i++) {
					var str = '<div class="search-user clearfix"><i class="search-user-mask"></i>'+
					'<div class="search-user-inner"><div class="search-user-avatar">'+
					'<a class="need-login" data-log="avatar" target="_blank" href="./#"><img src="upload/avatar/default_162.jpg" /></a>'+
					'<em class="icon-offline" title="离线"></em></div><div class="search-user-info">'+
					'<h3 class="search-user-title">'+
					'<a class="js-username need-login " data-log="nickname" href="./#" target="_blank" title="#">'+
					searchObj.pis[i][0]+'</a></h3><p class="text-gray">ID：'+
					searchObj.pis[i][1]+'</p><p class="text-gray">'+
					searchObj.pis[i][2]+'岁&nbsp;'+
					searchObj.pis[i][3]+'</p><p class="text-gray">软件学院</p><div class="search-user-operate">'+
					'<a class="btn-sayhi sayhi-trigger n-btn-sayhi" href="javascript:;">'+
					'<span class="btn-sayhi-txt js-text"><em class="icon-sayhi-s"></em>打招呼</span></a></div></div></div></div>';
					
					txt = document.createElement('li');
					txt.setAttribute("class", "js-item");
					txt.innerHTML = str;
					document.getElementById("mainBox_ul").appendChild(txt);
					str = "";
				}
			}
		});

	}
</script>
<script language="javascript" src="js/location.js"></script>
<script language="javascript">
	//根据年龄下限决定年龄上限的范围
	function testage() {
		var ageMin = parseInt(document.getElementById("age_min").value) + 1;
		var ageMax = document.getElementById("age_max");
		ageMax.length = 0;
		for (var i = ageMin; i < 40; i++) {
			ageMax.add(new Option(i + "岁", i));
		}
	}
	//写一个驱动这个函数
	function MyTest() {
		//找到级别最大的索引ID
		var province = document.getElementById("province");
		for ( var i in cityArr) {
			province.add(new Option(i, i));
		}
		//初始化年龄段
		var ages = document.getElementById("age_min");
		for (var i = 19; i < 30; i++) {
			ages.add(new Option(i + "岁", i));
		}
		var ages2 = document.getElementById("age_max");
		for (var i = 20; i < 30; i++) {
			ages2.add(new Option(i + "岁", i));
		}
	}
</script>

<style>
#codeImg {
	cursor: pointer;
}

#form1 {
	font-size: 16;
	margin-left: auto;
	margin-right: auto;
	width: 400px;
	height: 200px;
}
</style>
<script type="text/javascript">
var CONFIG = {};
CONFIG['vendor'] = "love.pSearch";
</script>
</head>
<body class="pSearch" data-log="pSearch" onload="MyTest()">
	<jsp:include page="header.jsp" />

	<div class="content n-tabshow-one">
		<div class="search-topBox clearfix">
			<h2 class="search-title search-title-interest n-tabshow-child-one"
				style="color: purple; font-family: 华文彩云;">寻寻觅觅 ></h2>

			<span class="search-slogan text-gray">在南哪儿遇见你</span>

		</div>


		<div id="searchFilter" class="search-filterBox" data-province="6"
			data-city="1" data-age="18-26">
			<div class="search-filter-tips text-gray">
				有标签用户更容易被搜到！<a class="link-lightBlue" data-log="profileInfo"
					target="_blank" href="mainpage">完善资料</a>
			</div>
			<br />

			<div class="search-filter-tag-tips"></div>
			<form method="post">
				<dl>
					<dt><b>寻觅这样的TA：</b></dt>
					<dd>
						<!-- 所在地 -->
						居住地: <select id="province" onchange="test()">
							<option value="0">[-不限省份-]</option>
						</select> <select id="livelocation">
							<option value="0">[-不限城市-]</option>
						</select>
						<!-- 年龄 -->
						<br /> 年龄段: <select id="age_min" onchange="testage()">
							<option value=18 selected>18岁</option>
						</select>到 <select id="age_max">
							<option value=26 selected>26岁</option>
						</select> <br />

					</dd>
				</dl>
				<input type="button" value="寻觅" id="btnGet" onclick="loadInfo()" />
				<div id="info" style="display: none;"></div>
			</form>
			<div class="search-filter-vipBox">
				<div class="search-filter-vipBox-tip js-vip-tips">
					更多搜索条件敬请期待。。。
				</div>
				<div class="clear"></div>
				
			</div>
		</div>

		<div id="mainBox" class="mainBox">
			<ul id="mainBox_ul" class="search-userlist clearfix js-itemList">

			</ul>
			<div class="mainBox-ft js-footer"></div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
	<div id="scrollBar" class="scrollBar">
		<a class="scrollBar-toTop js-top" hidefocus="true" href="javascript:;">
			<em class="icon-toTop" title="返回顶部"></em>
		</a> <a class="scrollBar-feedback  js-feedback " hidefocus="true"
			href="javascript:;"> <span class="text-feedback" title="意见反馈">意见反馈</span>
		</a>
	</div>

	<script type="text/javascript"
		src="http://img2.cache.netease.com/love/cssjs/735373/script/page/common.js"></script>
	<script type="text/javascript" data-main="page/search"
		src="http://img2.cache.netease.com/love/cssjs/735373/script/page/search.js"></script>

	
</body>
</html>