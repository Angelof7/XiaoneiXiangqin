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
<title>${user.username }的个人主页</title>
<link rel="apple-touch-icon-precomposed" href="logo_ipad.png" />
<link rel="shortcut icon" href="img/favicon.ico" />
<link rel="stylesheet" href="css/main.min.css" />
<link rel="stylesheet" href="css/page.min.css" />
<link rel="stylesheet" href="css/component.css" />
<link rel="stylesheet" href="css/default.css" />
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/jquery.easytabs.min.js"></script>
<script type="text/javascript" src="js/jquery.hashchange.min.js"></script>
<script type="text/javascript" src="js/modernizr.custom.js"></script>

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
#
</style>

<script type="text/javascript" language="javascript">
    $("#tab-container").easytabs();
	function changeImg() {
		$("#codeImg").attr("src", "checkcode.action?d=" + new Date().valueOf());
	}
</script>

</head>
<body class="profile profile-male">
	<jsp:include page="header.jsp" />

	<div class="content">
		<div id="basicInfoBox"
			class="clearfix profile-basic profile-basic-edit"
			data-log="basicInfoBox">
			<div class="profile-basic-avatar">
				<div class="profile-basic-avatar-imgBox  profile-basic-avatar-mine">
					<a href="/settings/face"> <img
						src="#" alt="头像"/>
					</a>
					<div class="profile-basic-avatar-update">
						<i></i> <a href="">点击修改头像</a>
					</div>
				</div>
				<div class="profile-basic-user-online" data-log="profileOnline">
					<em class="icon-online" title="在线"></em><span
						class="text-dark-gray online-tips">在线</span>
				</div>
			</div>
			<div id="profileBasicMain" class="profile-basic-main">
				<div id="userStatusBar" class="profile-basic-verified">
					<span id="profileVerifyName"
						class="profile-basic-name js-nickname ">${user.getUsername() }</span> <span
						class="profile-basic-id">ID：${user.id }</span>
				</div>
				<div class="profile-basic-info">
					<div class="profile-basic-info-left">
						<span>男</span> <span><em class="js-age">23</em>岁</span> <span><em
							class="js-height">177</em>cm</span> <span class="js-position">江苏南京</span>
					</div>
					<div id="integrityBox" class="profile-basic-integrity">
						<span style="float: left;"> 资料完整度：<span
							class="js-totalPercent">58</span>%
						</span>
						<ul class="profile-basic-integrity-view js-moduleIntroList">
							<li class="js-item js-monologBox-intro modify-trigger "
								data-moduleName="monologBox" title="立即完善"><em
								class="icon-profile-integrity"></em> <span
								class="profile-basic-integrity-text js-text">完善内心独白，资料完整度+<span
									class="js-percent">10</span>%
							</span></li>
							<li class="js-item js-loverDescBox-intro modify-trigger hidden"
								data-moduleName="loverDescBox" title="立即完善"><em
								class="icon-profile-integrity"></em> <span
								class="profile-basic-integrity-text js-text">完善择偶要求，资料完整度+<span
									class="js-percent">0</span>%
							</span></li>
							<li class="js-item js-summaryInfoBox-intro modify-trigger "
								data-moduleName="summaryInfoBox" title="立即完善"><em
								class="icon-profile-integrity"></em> <span
								class="profile-basic-integrity-text js-text">完成基本资料填写，资料完整度+<span
									class="js-percent">2</span>%
							</span></li>
							<li class="js-item js-detailInfoBox-intro modify-trigger "
								data-moduleName="detailInfoBox" title="立即完善"><em
								class="icon-profile-integrity"></em> <span
								class="profile-basic-integrity-text js-text">完善详细资料，资料完整度+<span
									class="js-percent">2</span>%
							</span></li>
							<li class="js-item js-lifeViewBox-intro modify-trigger "
								data-moduleName="lifeViewBox" title="立即完善"><em
								class="icon-profile-integrity"></em> <span
								class="profile-basic-integrity-text js-text">完善生活婚恋观，资料完整度+<span
									class="js-percent">20</span>%
							</span></li>
							<li class="js-item js-uploadPicBox-intro modify-trigger "
								data-moduleName="uploadPicBox" title="立即完善"><em
								class="icon-profile-integrity"></em> <span
								class="profile-basic-integrity-text js-text">上传<span
									class="js-count">4</span>张以上个人照，资料完整度+<span class="js-percent">8</span>%
							</span></li>
							<li class="js-item js-QA-intro modify-trigger hidden"
								data-moduleName="QA" title="立即完善"><em
								class="icon-profile-integrity"></em> <span
								class="profile-basic-integrity-text js-text">完成<span
									class="js-count">0</span>道以上Q&A，资料完整度+<span class="js-percent">0</span>%
							</span></li>
						</ul>
					</div>
				</div>
				<div class="profile-basic-tag clearfix js-tag"
					data-emptyTagGuide="1" data-newTagGuide="1">
					<ul class="profile-basic-tag-list js-tag-default"
						style="display: none;">
					</ul>
					<ul class="profile-basic-tag-list js-tag-list">
						<li>处女座</li>
						<li>学生</li>
						<li>善良</li>
						<li>羽毛球</li>
					</ul>
					<span class="profile-basic-tag-desc js-tag-tips"
						style="display: none;"><span class="js-text">暂无标签</span>（<a
						class="underline update-qa-trigger" href="javascript:;">回答QA</a>、<a
						class="underline update-info-trigger" href="javascript:;">完善资料</a>获得更多标签）</span>
					<a
						class="profile-basic-tag-edit icon-edit-s tag-trigger js-tag-edit"
						title="编辑标签" href="javascript:;"></a>
				</div>
				<div class="profile-basic-action">
					<ul class="profile-basic-action-list clearfix">
						<li><a
							class="icon-upload-profile-photo g-upload-photo-trigger"
							hidefocus="true" href="javascript:;"> <em></em>
								<p>上传照片</p>
						</a></li>
						<li><a
							class="icon-upload-profile-letter g-upload-letter-trigger"
							hidefocus="true" href="javascript:;"> <em></em>
								<p>文字传情</p>
						</a></li>
						
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="person_img" style="height:50px;margin-top:-20px;">
	    
	</div>
	<div class="contentBox">
		<div class="tab-container" id="tab-container">
			<ul class="tabBar">
				<li class="tab"><a href="#person">我的动态</a></li>
				<li class="tab"><a href="#form1">个人资料</a></li>
				<li class="tab"><a href="#form2">我的问答</a></li>
			</ul>
			<div class="panel-container">
	            <div id="person">
					<ul class="cbp_tmtimeline">
						<li>
							<time class="cbp_tmtime" datetime="2013-04-10 18:30"><span>4/10/13</span> <span>18:30</span></time>
							<div class="cbp_tmicon cbp_tmicon-phone"></div>
							<div class="cbp_tmlabel">
								<h2>Ricebean black-eyed pea</h2>
								<p>Winter purslane courgette pumpkin quandong komatsuna fennel green bean cucumber watercress. Pea sprouts wattle seed rutabaga okra yarrow cress avocado grape radish bush tomato ricebean black-eyed pea maize eggplant. Cabbage lentil cucumber chickpea sorrel gram garbanzo plantain lotus root bok choy squash cress potato summer purslane salsify fennel horseradish dulse. Winter purslane garbanzo artichoke broccoli lentil corn okra silver beet celery quandong. Plantain salad beetroot bunya nuts black-eyed pea collard greens radish water spinach gourd chicory prairie turnip avocado sierra leone bologi.</p>
							</div>
						</li>
						<li>
							<time class="cbp_tmtime" datetime="2013-04-11T12:04"><span>4/11/13</span> <span>12:04</span></time>
							<div class="cbp_tmicon cbp_tmicon-screen"></div>
							<div class="cbp_tmlabel">
								<h2>Greens radish arugula</h2>
								<p>Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi.</p>
							</div>
						</li>
						<li>
							<time class="cbp_tmtime" datetime="2013-04-13 05:36"><span>4/13/13</span> <span>05:36</span></time>
							<div class="cbp_tmicon cbp_tmicon-mail"></div>
							<div class="cbp_tmlabel">
								<h2>Sprout garlic kohlrabi</h2>
								<p>Parsnip lotus root celery yarrow seakale tomato collard greens tigernut epazote ricebean melon tomatillo soybean chicory broccoli beet greens peanut salad. Lotus root burdock bell pepper chickweed shallot groundnut pea sprouts welsh onion wattle seed pea salsify turnip scallion peanut arugula bamboo shoot onion swiss chard. Avocado tomato peanut soko amaranth grape fennel chickweed mung bean soybean endive squash beet greens carrot chicory green bean. Tigernut dandelion sea lettuce garlic daikon courgette celery maize parsley komatsuna black-eyed pea bell pepper aubergine cauliflower zucchini. Quandong pea chickweed tomatillo quandong cauliflower spinach water spinach.</p>
							</div>
						</li>
						<li>
							<time class="cbp_tmtime" datetime="2013-04-15 13:15"><span>4/15/13</span> <span>13:15</span></time>
							<div class="cbp_tmicon cbp_tmicon-phone"></div>
							<div class="cbp_tmlabel">
								<h2>Watercress ricebean</h2>
								<p>Peanut gourd nori welsh onion rock melon mustard jícama. Desert raisin amaranth kombu aubergine kale seakale brussels sprout pea. Black-eyed pea celtuce bamboo shoot salad kohlrabi leek squash prairie turnip catsear rock melon chard taro broccoli turnip greens. Fennel quandong potato watercress ricebean swiss chard garbanzo. Endive daikon brussels sprout lotus root silver beet epazote melon shallot.</p>
							</div>
						</li>
						<li>
							<time class="cbp_tmtime" datetime="2013-04-16 21:30"><span>4/16/13</span> <span>21:30</span></time>
							<div class="cbp_tmicon cbp_tmicon-earth"></div>
							<div class="cbp_tmlabel">
								<h2>Courgette daikon</h2>
								<p>Parsley amaranth tigernut silver beet maize fennel spinach. Ricebean black-eyed pea maize scallion green bean spinach cabbage jícama bell pepper carrot onion corn plantain garbanzo. Sierra leone bologi komatsuna celery peanut swiss chard silver beet squash dandelion maize chicory burdock tatsoi dulse radish wakame beetroot.</p>
							</div>
						</li>
						<li>
							<time class="cbp_tmtime" datetime="2013-04-17 12:11"><span>4/17/13</span> <span>12:11</span></time>
							<div class="cbp_tmicon cbp_tmicon-screen"></div>
							<div class="cbp_tmlabel">
								<h2>Greens radish arugula</h2>
								<p>Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette lettuce. Celery coriander bitterleaf epazote radicchio shallot winter purslane collard greens spring onion squash lentil. Artichoke salad bamboo shoot black-eyed pea brussels sprout garlic kohlrabi.</p>
							</div>
						</li>
						<li>
							<time class="cbp_tmtime" datetime="2013-04-18 09:56"><span>4/18/13</span> <span>09:56</span></time>
							<div class="cbp_tmicon cbp_tmicon-phone"></div>
							<div class="cbp_tmlabel">
								<h2>Sprout garlic kohlrabi</h2>
								<p>Parsnip lotus root celery yarrow seakale tomato collard greens tigernut epazote ricebean melon tomatillo soybean chicory broccoli beet greens peanut salad. Lotus root burdock bell pepper chickweed shallot groundnut pea sprouts welsh onion wattle seed pea salsify turnip scallion peanut arugula bamboo shoot onion swiss chard. Avocado tomato peanut soko amaranth grape fennel chickweed mung bean soybean endive squash beet greens carrot chicory green bean. Tigernut dandelion sea lettuce garlic daikon courgette celery maize parsley komatsuna black-eyed pea bell pepper aubergine cauliflower zucchini. Quandong pea chickweed tomatillo quandong cauliflower spinach water spinach.</p>
							</div>
						</li>
					</ul>
	            </div>
				<div id="form1">
					<h1>个人资料</h1>
					Welcome! <br> ${user.username }<br>${user.id}
				</div>
				<div id="form2">
					<h1>我的问答</h1>
					Welcome! <br> ${user.username }<br>${user.id}
				</div>
			</div>
		</div>
		<div class="right">
		     <h5><label>我在右边</label></h5>
		     <br><br><br><br><br><br><br><br><br><br><br><br>
		</div>
		<div style="clear:both;"></div>
	</div>
    <script type="text/javascript" language="javascript">
    $("#tab-container").easytabs();
    </script>
    
	<jsp:include page="footer.jsp" />
</body>
</html>