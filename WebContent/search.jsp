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
<body class="pSearch" data-log="pSearch">
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
					target="_blank" href="/6818658?info=1#edit=2_3_4">完善资料</a>
			</div>
			<br />

			<div class="search-filter-selectedBox js-selectedbox">
				<span class="search-filter-selected"><span class="js-text">IT精英</span><a
					class="icon-close cancelTag-trigger" href="javascript:;"></a></span>
			</div>
			<div class="search-filter-tag-tips"></div>
			<form method="post">
			<dl class="search-filter-default clearfix">
				<dt>筛&nbsp;&nbsp;&nbsp;选：</dt>
				<dd class="js-folderbox clearfix">
					<!-- 所在地 -->
					<div class="folder-item folder-item-location js-item"
						data-type="location" data-method="change_city">
						<span class="folder-item-title js-title need-login"> <b
							class="js-text" data-default="所在地">江苏南京</b><span><em></em></span>
						</span>
						<div class="folder-item-main js-main">
							<h3 class="title text-gray">请选择所在地</h3>
							<div class="folder-item-select text-gray">
								<select class="js-start" data-default="0" data-selected="6"></select>
								<select class="js-end" data-default="0" data-selected="1"></select>
							</div>
							<div class="folder-item-btn">
								<a href="javascript:;" class="btn btn-black filter-trigger">确认</a>
							</div>
						</div>
					</div>
					<!-- 年龄 -->
					<div class="folder-item folder-item-age js-item" data-type="age"
						data-method="change_age">
						<span class="folder-item-title js-title need-login"> <b
							class="js-text" data-default="年龄">18到26岁</b><span><em></em></span>
						</span>
						<div class="folder-item-main js-main">
							<h3 class="title text-gray">请选择年龄</h3>
							<div class="folder-item-select text-gray">
								<select class="js-start" data-default="0" data-selected="18"></select>
								<select class="js-end" data-default="0" data-selected="26"></select>
							</div>
							<div class="folder-item-btn">
								<a href="javascript:;" class="btn btn-black filter-trigger">确认</a>
							</div>
						</div>
					</div>
				</dd>
			</dl>
			<input type="submit" value="寻觅"/>
			</form>
			<div class="search-filter-vipBox">
				<div class="search-filter-vipBox-tip js-vip-tips">
					<a class="search-filter-vipBox-tip-fold fold-trigger"
						href="javascript:;"><em
						class="icon-shrink-lightgray n-switch-one"></em><em
						class="icon-expand-lightgray n-switch-two"></em></a> <a
						class="link-red need-login" target="_blank" href="#"
						data-log="feedVip">提高资料完整度</a>可使用更多搜索条件
				</div>
				<div class="clear"></div>
				<dl
					class="search-filter-default search-filter-unopen js-vip-filter clearfix">
					<dd class="js-folderbox clearfix">
						<!-- 学历 -->
						<div
							class="folder-item folder-item-education js-item folder-item-disabled"
							data-type="education">
							<span class="folder-item-title"> <b class="js-text"
								data-default="学历">学历</b><span><em></em></span>
							</span>
						</div>
						<!-- 身高 -->
						<div
							class="folder-item folder-item-height js-item folder-item-disabled"
							data-type="height">
							<span class="folder-item-title"> <b class="js-text"
								data-default="身高">身高</b><span><em></em></span>
							</span>
						</div>
						<!-- 行业 -->
						<div
							class="folder-item folder-item-industry js-item folder-item-disabled"
							data-type="industry">
							<span class="folder-item-title"> <b class="js-text"
								data-default="行业">行业</b><span><em></em></span>
							</span>
						</div>
						<!-- 月收入 -->
						<div
							class="folder-item folder-item-salary js-item folder-item-disabled"
							data-type="salary">
							<span class="folder-item-title"> <b class="js-text"
								data-default="月收入">月收入</b><span><em></em></span>
							</span>
						</div>
						<!-- 住房 -->
						<div
							class="folder-item folder-item-house js-item folder-item-disabled"
							data-type="house">
							<span class="folder-item-title"> <b class="js-text"
								data-default="住房">住房</b><span><em></em></span>
							</span>
						</div>
						<!-- 购车 -->
						<div
							class="folder-item folder-item-car js-item folder-item-disabled"
							data-type="car">
							<span class="folder-item-title"> <b class="js-text"
								data-default="购车">购车</b><span><em></em></span>
							</span>
						</div>
						<!-- 星座 -->
						<div
							class="folder-item folder-item-constellation js-item folder-item-disabled"
							data-type="constellation">
							<span class="folder-item-title"> <b class="js-text"
								data-default="星座">星座</b><span><em></em></span>
							</span>
						</div>
						<!-- 籍贯 -->
						<div
							class="folder-item folder-item-birthProvince js-item folder-item-disabled"
							data-type="birthProvince">
							<span class="folder-item-title"> <b class="js-text"
								data-default="籍贯">籍贯</b><span><em></em></span>
							</span>
						</div>
						<!-- 民族 -->
						<div
							class="folder-item folder-item-nationality js-item folder-item-disabled"
							data-type="nationality">
							<span class="folder-item-title"> <b class="js-text"
								data-default="民族">民族</b><span><em></em></span>
							</span>
						</div>
						<!-- 婚姻状况 -->
						<div
							class="folder-item folder-item-marriageStatus js-item folder-item-disabled"
							data-type="marriageStatus">
							<span class="folder-item-title"> <b class="js-text"
								data-default="婚姻状况">婚姻状况</b><span><em></em></span>
							</span>
						</div>
					</dd>
				</dl>
			</div>
		</div>

		<div id="mainBox" class="mainBox">
			<ul class="search-userlist clearfix js-itemList">
				<li class="js-item" data-item-id="-3774872243857421307">
					<div class="search-user clearfix">
						<i class="search-user-mask"></i>
						<div class="search-user-inner">
							<div class="search-user-avatar">
								<a class="need-login" data-log="avatar" target="_blank"
									href="/9404027"><img
									src="http://imgsize.ph.126.net/?imgurl=http://img0.ph.126.net/DT_-ZZGygN1PItVFXarMFg==/2585910611058856710.jpg_140x140x1x85.jpg" /></a>
								<em class="icon-offline" title="离线"></em>
							</div>
							<div class="search-user-info">
								<h3 class="search-user-title">
									<a class="js-username need-login " data-log="nickname"
										href="/9404027" target="_blank" title="风子小姐">风子小姐</a>
								</h3>
								<p class="text-gray">ID：9404027</p>
								<p class="text-gray">25岁&nbsp;南京</p>
								<p class="text-gray">本科&nbsp;4000-6000元</p>
								<div class="search-user-operate">
									<a class="btn-sayhi sayhi-trigger n-btn-sayhi"
										href="javascript:;"> <span class="btn-sayhi-txt js-text"><em
											class="icon-sayhi-s"></em>打招呼</span></a>
								</div>
							</div>
						</div>
					</div>
				</li>

				<li class="js-item" data-item-id="-6314952905981888448">
					<div class="search-user clearfix">
						<i class="search-user-mask"></i>
						<div class="search-user-inner">
							<div class="search-user-avatar">
								<a class="need-login" data-log="avatar" target="_blank"
									href="/44300223"><img
									src="http://imgsize.ph.126.net/?imgurl=http://img2.ph.126.net/swIHucX0y1YPZmn5JkyPQQ==/86412817950387794.jpg_140x140x1x85.jpg" /></a>
								<em class="icon-android" title="Android在线"></em>
							</div>
							<div class="search-user-info">
								<h3 class="search-user-title">
									<a class="js-username need-login " data-log="nickname"
										href="/44300223" target="_blank" title="从头开始">从头开始</a>
								</h3>
								<p class="text-gray">ID：44300223</p>
								<p class="text-gray">25岁&nbsp;南京</p>
								<p class="text-gray">本科&nbsp;4000-6000元</p>
								<div class="search-user-operate">
									<a class="btn-sayhi sayhi-trigger n-btn-sayhi"
										href="javascript:;"> <span class="btn-sayhi-txt js-text"><em
											class="icon-sayhi-s"></em>打招呼</span></a>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li class="js-item" data-item-id="-7700853045982604568">
					<div class="search-user clearfix">
						<i class="search-user-mask"></i>
						<div class="search-user-inner">
							<div class="search-user-avatar">
								<a class="need-login" data-log="avatar" target="_blank"
									href="/2432362"><img
									src="http://imgsize.ph.126.net/?imgurl=http://img2.ph.126.net/ul77O-FMpKQoNqIXJa5-qg==/852306229580316443.jpg_140x140x1x85.jpg" /></a>
								<em class="icon-iphone" title="iPhone在线"></em>
							</div>
							<div class="search-user-info">
								<h3 class="search-user-title">
									<a class="js-username need-login " data-log="nickname"
										href="/2432362" target="_blank" title="小豆子">小豆子</a>
								</h3>
								<p class="text-gray">ID：2432362</p>
								<p class="text-gray">22岁&nbsp;南京</p>
								<p class="text-gray">大专&nbsp;2000-4000元</p>
								<div class="search-user-operate">
									<a class="btn-sayhi sayhi-trigger n-btn-sayhi"
										href="javascript:;"> <span class="btn-sayhi-txt js-text"><em
											class="icon-sayhi-s"></em>打招呼</span></a>
								</div>
							</div>
						</div>
					</div>
				</li>




				<li class="js-item" data-item-id="435378331930662883">
					<div class="search-user clearfix">
						<i class="search-user-mask"></i>
						<div class="search-user-inner">
							<div class="search-user-avatar">
								<a class="need-login" data-log="avatar" target="_blank"
									href="/4303370"><img
									src="http://imgsize.ph.126.net/?imgurl=http://img1.ph.126.net/hDRY52nrM6RviDL19koyKQ==/6608516782212848746.jpg_140x140x1x85.jpg" /></a>
								<em class="icon-iphone" title="iPhone在线"></em>
							</div>
							<div class="search-user-info">
								<h3 class="search-user-title">
									<a class="js-username need-login " data-log="nickname"
										href="/4303370" target="_blank" title="fly菲">fly菲</a>
								</h3>
								<p class="text-gray">ID：4303370</p>
								<p class="text-gray">26岁&nbsp;南京</p>
								<p class="text-gray">本科&nbsp;4000-6000元</p>
								<div class="search-user-operate">
									<a class="btn-sayhi sayhi-trigger n-btn-sayhi"
										href="javascript:;"> <span class="btn-sayhi-txt js-text"><em
											class="icon-sayhi-s"></em>打招呼</span></a>
								</div>
							</div>
						</div>
					</div>
				</li>
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


	<div id="jsData">
		<script id="data_loginUser" type="application/json">
   {
         "id": "2676930083729181488",
      "nickName": "Andy",
      "url": "6818658",
   "age": 23,
   "sex": 1,
      "avatar": "http://img1.ph.126.net/6vde-IEQfFb5wIeSIrnsLg==/6597312758728049608.jpg#3",
      "avatarFlag": "1"
,
         "isVip": false,
"isNormalVip": false,
"isSuperVip": false
,
      "albumId": 1,
      "isHasMate": true   }
   </script>
		<script id="data_userAccount" type="application/json">
   {
      "userId": "2676930083729181488",
      "totalBalance": 0,
      "donatedBalance": 0
   }
   </script>
		<script id="data_searchList" type="application/json">








{
   "list": [
   	   {
               "id": "-3774872243857421307",
      "nickName": "风子小姐",
      "url": "9404027",
   "age": 25,
   "sex": 2,
      "avatar": "http://img0.ph.126.net/DT_-ZZGygN1PItVFXarMFg==/2585910611058856710.jpg#3",
      "avatarFlag": "1"
,
         "isVip": false,
"isNormalVip": false,
"isSuperVip": false
,
   "isOnline": 0,
   "province": 6,
   "city": 1,
   "isUserBlock": false
,
   "following": false,
   "followed": false,
   "isSayHi": false,
   "height": "162",
   "education": "3",
   "salary": "2",
   "school": "江南大学",
   "company": "",
   "isCheckCorp": false,
   "isCheckSchool": true,
   "isCheckSalary": false,
   "isCheckCorpVerify": false,
   "photoCount": 15
,
   "marriageStatus": "1",        "position": "0",        "industry": "3",        "house": "0",        "car": "0",        "isCheckId": false,
   "isCheckMobile": true,
   "isCheckCorpVerify": false
}
,   	   {
               "id": "-3642505670191463817",
      "nickName": "咸鱼翻白眼",
      "url": "914587",
   "age": 24,
   "sex": 2,
      "avatar": "http://img0.ph.126.net/fZlhzNxNACS3tj0UL343OA==/6608473901259399483.jpg#3",
      "avatarFlag": "1"
,
         "isVip": false,
"isNormalVip": false,
"isSuperVip": false
,
   "isOnline": 3,
   "province": 6,
   "city": 1,
   "isUserBlock": false
,
   "following": false,
   "followed": false,
   "isSayHi": false,
   "height": "163",
   "education": "3",
   "salary": "3",
   "school": "",
   "company": "",
   "isCheckCorp": false,
   "isCheckSchool": false,
   "isCheckSalary": false,
   "isCheckCorpVerify": false,
   "photoCount": 10
,
   "marriageStatus": "1",        "position": "0",        "industry": "10",        "house": "0",        "car": "0",        "isCheckId": false,
   "isCheckMobile": true,
   "isCheckCorpVerify": false
}

   ],
   "page": {
   "totalSize": 90,
   "pageCount": 3,
   "pageNo": 1,
   "pageSize": 30,
   "pageMethod": "page"
}
}
</script>

	</div>

	<script type="text/javascript"
		src="http://img2.cache.netease.com/love/cssjs/735373/script/page/common.js"></script>
	<script type="text/javascript" data-main="page/search"
		src="http://img2.cache.netease.com/love/cssjs/735373/script/page/search.js"></script>

	<script type="text/javascript">
(function(){_ntes_nacc="love";var a=document.createElement("script");a.type="text/javascript",a.readyState?a.onreadystatechange=function(){("loaded"===a.readyState||"complete"===a.readyState)&&(a.onreadystatechange=null,neteaseTracker(),neteaseClickStat())}:a.onload=function(){neteaseTracker(),neteaseClickStat(),a.onload=null},a.src="http://analytics.163.com/ntes.js",document.getElementsByTagName("head")[0].appendChild(a)})();
var _gaq=_gaq||[];_gaq.push(["_setAccount","UA1373358407458"],["_setLocalGifPath","/UA1373358407458/__utm.gif"],["_setLocalServerMode"]),_gaq.push(["_trackPageview"]),function(){var a=document.createElement("script");a.type="text/javascript",a.async=!0,a.src="http://wr.da.netease.com/ga.js";var b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(a,b)}();
</script>
</body>
</html>