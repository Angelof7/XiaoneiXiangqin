<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,com.xiangqin.ORM.User;"%>
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
<title>${personalInfo.nickName }的个人主页</title>
<link rel="apple-touch-icon-precomposed" href="logo_ipad.png" />
<link rel="shortcut icon" href="img/favicon.ico" />
<link href="css/box_style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="css/main.min.css" />
<link rel="stylesheet" href="css/page.min.css" />
<link rel="stylesheet" href="css/component.css" />
<link rel="stylesheet" href="css/default.css" />
<link rel="stylesheet" href="css/InfoDisplay.css" />
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="js/jquery.easytabs.min.js"></script>
<script type="text/javascript" src="js/jquery.hashchange.min.js"></script>
<script type="text/javascript" src="js/modernizr.custom.js"></script>
<script type="text/javascript" src="js/jquery.XYTipsWindow.2.8.js"></script>
<script type="text/javascript" src="js/mainpage.js"></script>
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
<body class="profile profile-male" reload="true">
	<jsp:include page="header.jsp" />

	<div class="content">
		<div id="basicInfoBox"
			class="clearfix profile-basic profile-basic-edit"
			data-log="basicInfoBox">
			<div class="profile-basic-avatar">
				<div class="profile-basic-avatar-imgBox  profile-basic-avatar-mine">
					<a href="/settings/face"> 
					<% 
					    User user = (User)session.getAttribute("user");
						String path1=application.getRealPath(request.getContextPath());  
					    String dir=new File(path1).getParent();
						String savePath = "/upload/avatar/"; //保存图片路径 可以修改
					    String _savePath =  dir+savePath+user.getId()+"/";
					    File file = new File(_savePath+user.getId()+"_162.jpg");
					    if(file.exists()){
					%>
					<img src="upload/avatar/${user.getId() }/${user.getId() }_162.jpg" alt="头像" />
					<%}else{ %>
					<img src="upload/avatar/default_162.jpg" alt="头像" />
					<%} %>
					</a>
					<div class="profile-basic-avatar-update">
						<i></i> <a href="updateface.jsp">点击修改头像</a>
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
						class="profile-basic-name js-nickname ">${personalInfo.nickName}</span>
					<span class="profile-basic-id">ID：${user.getId() }</span>
				</div>
				<div class="profile-basic-info">
					<div class="profile-basic-info-left">
						<span><c:choose>
								<c:when test="${personalInfo.gender == 0}">
									<c:out value="男" />
								</c:when>
								<c:otherwise>
									<c:out value="女"></c:out>
								</c:otherwise>
							</c:choose> </span> <span><em class="js-age">${personalInfo.age}</em>岁</span> <span><em
							class="js-height">${personalInfo.height}</em>cm</span> <span
							class="js-position">${personalInfo.liveLocation}</span>
					</div>
					<div id="integrityBox" class="profile-basic-integrity">
						<span style="float: left;"> 资料完整度：<span
							class="js-totalPercent">58</span>%
						</span>

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
						<li><a id="upload" class="icon-upload-profile-photo g-upload-photo-trigger" hidefocus="true" href="javascript:;"> <em></em>
								<p>上传照片</p>
						
						</a>
						</li>
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
	<div class="person_img" style="height: 50px; margin-top: -20px;">

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
						<li><time class="cbp_tmtime" datetime="2013-04-10 18:30">
							<span>4/10/13</span> <span>18:30</span></time>
							<div class="cbp_tmicon cbp_tmicon-phone"></div>
							<div class="cbp_tmlabel">
								<h2>Ricebean black-eyed pea</h2>
								<p>Winter purslane courgette pumpkin quandong komatsuna
									fennel green bean cucumber watercress. Pea sprouts wattle seed
									rutabaga okra yarrow cress avocado grape radish bush tomato
									ricebean black-eyed pea maize eggplant. Cabbage lentil cucumber
									chickpea sorrel gram garbanzo plantain lotus root bok choy
									squash cress potato summer purslane salsify fennel horseradish
									dulse. Winter purslane garbanzo artichoke broccoli lentil corn
									okra silver beet celery quandong. Plantain salad beetroot bunya
									nuts black-eyed pea collard greens radish water spinach gourd
									chicory prairie turnip avocado sierra leone bologi.</p>
							</div></li>
						<li><time class="cbp_tmtime" datetime="2013-04-11T12:04">
							<span>4/11/13</span> <span>12:04</span></time>
							<div class="cbp_tmicon cbp_tmicon-screen"></div>
							<div class="cbp_tmlabel">
								<h2>Greens radish arugula</h2>
								<p>Caulie dandelion maize lentil collard greens radish
									arugula sweet pepper water spinach kombu courgette lettuce.
									Celery coriander bitterleaf epazote radicchio shallot winter
									purslane collard greens spring onion squash lentil. Artichoke
									salad bamboo shoot black-eyed pea brussels sprout garlic
									kohlrabi.</p>
							</div></li>
						<li><time class="cbp_tmtime" datetime="2013-04-13 05:36">
							<span>4/13/13</span> <span>05:36</span></time>
							<div class="cbp_tmicon cbp_tmicon-mail"></div>
							<div class="cbp_tmlabel">
								<h2>Sprout garlic kohlrabi</h2>
								<p>Parsnip lotus root celery yarrow seakale tomato collard
									greens tigernut epazote ricebean melon tomatillo soybean
									chicory broccoli beet greens peanut salad. Lotus root burdock
									bell pepper chickweed shallot groundnut pea sprouts welsh onion
									wattle seed pea salsify turnip scallion peanut arugula bamboo
									shoot onion swiss chard. Avocado tomato peanut soko amaranth
									grape fennel chickweed mung bean soybean endive squash beet
									greens carrot chicory green bean. Tigernut dandelion sea
									lettuce garlic daikon courgette celery maize parsley komatsuna
									black-eyed pea bell pepper aubergine cauliflower zucchini.
									Quandong pea chickweed tomatillo quandong cauliflower spinach
									water spinach.</p>
							</div></li>
						<li><time class="cbp_tmtime" datetime="2013-04-15 13:15">
							<span>4/15/13</span> <span>13:15</span></time>
							<div class="cbp_tmicon cbp_tmicon-phone"></div>
							<div class="cbp_tmlabel">
								<h2>Watercress ricebean</h2>
								<p>Peanut gourd nori welsh onion rock melon mustard jícama.
									Desert raisin amaranth kombu aubergine kale seakale brussels
									sprout pea. Black-eyed pea celtuce bamboo shoot salad kohlrabi
									leek squash prairie turnip catsear rock melon chard taro
									broccoli turnip greens. Fennel quandong potato watercress
									ricebean swiss chard garbanzo. Endive daikon brussels sprout
									lotus root silver beet epazote melon shallot.</p>
							</div></li>
						<li><time class="cbp_tmtime" datetime="2013-04-16 21:30">
							<span>4/16/13</span> <span>21:30</span></time>
							<div class="cbp_tmicon cbp_tmicon-earth"></div>
							<div class="cbp_tmlabel">
								<h2>Courgette daikon</h2>
								<p>Parsley amaranth tigernut silver beet maize fennel
									spinach. Ricebean black-eyed pea maize scallion green bean
									spinach cabbage jícama bell pepper carrot onion corn plantain
									garbanzo. Sierra leone bologi komatsuna celery peanut swiss
									chard silver beet squash dandelion maize chicory burdock tatsoi
									dulse radish wakame beetroot.</p>
							</div></li>
						<li><time class="cbp_tmtime" datetime="2013-04-17 12:11">
							<span>4/17/13</span> <span>12:11</span></time>
							<div class="cbp_tmicon cbp_tmicon-screen"></div>
							<div class="cbp_tmlabel">
								<h2>Greens radish arugula</h2>
								<p>Caulie dandelion maize lentil collard greens radish
									arugula sweet pepper water spinach kombu courgette lettuce.
									Celery coriander bitterleaf epazote radicchio shallot winter
									purslane collard greens spring onion squash lentil. Artichoke
									salad bamboo shoot black-eyed pea brussels sprout garlic
									kohlrabi.</p>
							</div></li>
						<li><time class="cbp_tmtime" datetime="2013-04-18 09:56">
							<span>4/18/13</span> <span>09:56</span></time>
							<div class="cbp_tmicon cbp_tmicon-phone"></div>
							<div class="cbp_tmlabel">
								<h2>Sprout garlic kohlrabi</h2>
								<p>Parsnip lotus root celery yarrow seakale tomato collard
									greens tigernut epazote ricebean melon tomatillo soybean
									chicory broccoli beet greens peanut salad. Lotus root burdock
									bell pepper chickweed shallot groundnut pea sprouts welsh onion
									wattle seed pea salsify turnip scallion peanut arugula bamboo
									shoot onion swiss chard. Avocado tomato peanut soko amaranth
									grape fennel chickweed mung bean soybean endive squash beet
									greens carrot chicory green bean. Tigernut dandelion sea
									lettuce garlic daikon courgette celery maize parsley komatsuna
									black-eyed pea bell pepper aubergine cauliflower zucchini.
									Quandong pea chickweed tomatillo quandong cauliflower spinach
									water spinach.</p>
							</div></li>
					</ul>
				</div>
				<div id="form1">
					<div class="PersonalInfo">
						<ul>
							<li><span>昵称：</span>${personalInfo.nickName}</li>
							<li><span>婚姻状态：</span> 
								<c:choose>
									<c:when test="${personalInfo.marriageStatus==0}">
										<c:out value="请选择"></c:out>
									</c:when>
									<c:when test="${personalInfo.marriageStatus==1}">
										<c:out value="未婚"></c:out>
									</c:when>
									<c:otherwise>
										<c:out value="已婚"></c:out>
									</c:otherwise>
								</c:choose>
							</li>
							<li><span>我在寻找：</span>
								<c:if test="${personalInfo.objectType == 0}">
									<c:out value="结婚对象"></c:out>
								</c:if> <c:if test="${personalInfo.objectType == 1}">
									<c:out value="恋人"></c:out>
								</c:if> <c:if test="${personalInfo.objectType == 2}">
									<c:out value="普通朋友"></c:out>
								</c:if> <c:if test="${personalInfo.objectType == 3}">
									<c:out value="知己"></c:out>
								</c:if>
							</li>
							<li><span>性别：</span>
								<c:choose>
									<c:when test="${personalInfo.gender == 0}">
										<c:out value="男" />
									</c:when>
									<c:otherwise>
										<c:out value="女"></c:out>
									</c:otherwise>
								</c:choose>
							</li>
							<li><span>年龄：</span>${personalInfo.age}岁</li>
							<li><span>身高：</span>${personalInfo.height}cm</li>
							<li><span>体重：</span>${personalInfo.weight}kg</li>
							<li><span>居住在：</span>${personalInfo.liveLocation}</li>
							<li><span>学历：</span> <c:if test="${personalInfo.education == 0}">
									<c:out value="大专以下"></c:out>
								</c:if> <c:if test="${personalInfo.education == 1}">
									<c:out value="大专"></c:out>
								</c:if> <c:if test="${personalInfo.education == 2}">
									<c:out value="本科"></c:out>
								</c:if> <c:if test="${personalInfo.education == 3}">
									<c:out value="硕士"></c:out>
								</c:if> <c:if test="${personalInfo.education == 4}">
									<c:out value="博士"></c:out>
								</c:if>
							</li>
							<li><span>毕业院校：</span>${personalInfo.graduateFrom}</li>
							<li><span>行业：</span> 
								<c:choose>
									<c:when test="${personalInfo.industry == 0}">
										<c:out value="请选择"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 1}">
										<c:out value="计算机/互联网/通信"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 2}">
										<c:out value="公务员/事业单位"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 3}">
										<c:out value="教师"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 4}">
										<c:out value="医生"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 5}">
										<c:out value="护士"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 6}">
										<c:out value="乘务员"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 7}">
										<c:out value="生产/工艺/制造"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 8}">
										<c:out value="商业/服务业/个体经营"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 9}">
										<c:out value="金融/银行/投资/保险"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 10}">
										<c:out value="文化/广告/传媒"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 11}">
										<c:out value="娱乐/艺术/表演"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 12}">
										<c:out value="律师/法务"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 13}">
										<c:out value="教育/培训/管理咨询"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 14}">
										<c:out value="建筑/房地产/物业"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 15}">
										<c:out value="消费零售/贸易/物流"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 16}">
										<c:out value="酒店/旅游"></c:out>
									</c:when>
									<c:when test="${personalInfo.industry == 17}">
										<c:out value="现代农业"></c:out>
									</c:when>
									<c:otherwise>
										<c:out value="在校学生"></c:out>
									</c:otherwise>
								</c:choose>
							</li>
							<li><span>工作单位：</span>${personalInfo.company}</li>
							<li><span>目前职位：</span> 
								<c:choose>
									<c:when test="${personalInfo.currentJob==0}">
										<c:out value="请选择"></c:out>
									</c:when>
									<c:when test="${personalInfo.currentJob==1}">
										<c:out value="普通职员"></c:out>
									</c:when>
									<c:when test="${personalInfo.currentJob==2}">
										<c:out value="中层管理者"></c:out>
									</c:when>
									<c:when test="${personalInfo.currentJob==3}">
										<c:out value="高层管理者"></c:out>
									</c:when>
									<c:otherwise>
										<c:out value="企业主"></c:out>
									</c:otherwise>
								</c:choose>
							</li>
							<li><span>月收入：</span>
								 <c:if test="${personalInfo.monthlyIncome == 0}">
									<c:out value="请选择"></c:out>
								</c:if> <c:if test="${personalInfo.monthlyIncome == 1}">
									<c:out value="2000-4000"></c:out>
								</c:if> <c:if test="${personalInfo.monthlyIncome == 2}">
									<c:out value="2000-4000"></c:out>
								</c:if> <c:if test="${personalInfo.monthlyIncome == 3}">
									<c:out value="4000-6000"></c:out>
								</c:if> <c:if test="${personalInfo.monthlyIncome == 4}">
									<c:out value="6000-10000"></c:out>
								</c:if> <c:if test="${personalInfo.monthlyIncome == 5}">
									<c:out value="10000-15000"></c:out>
								</c:if> <c:if test="${personalInfo.monthlyIncome == 6}">
									<c:out value="15000-20000"></c:out>
								</c:if> <c:if test="${personalInfo.monthlyIncome == 7}">
									<c:out value="20000以上"></c:out>
								</c:if>
							</li>
							<li><span>户口：</span>${personalInfo.account}</li>
							<li><span>住房情况：</span> 
								<c:if test="${personalInfo.housingCondition == 0}">
									<c:out value="请选择"></c:out>
								</c:if> <c:if test="${personalInfo.housingCondition == 1}">
									<c:out value="已购房"></c:out>
								</c:if> <c:if test="${personalInfo.housingCondition == 2}">
									<c:out value="租房"></c:out>
								</c:if> <c:if test="${personalInfo.housingCondition == 3}">
									<c:out value="单位宿舍"></c:out>
								</c:if> <c:if test="${personalInfo.housingCondition == 4}">
									<c:out value="和家人同住"></c:out>
								</c:if>
							</li>
							<li><span>购车情况：</span>
								<c:if test="${personalInfo.carCondition == 0}">
									<c:out value="请选择"></c:out>
								</c:if> <c:if test="${personalInfo.carCondition == 1}">
									<c:out value="已购车"></c:out>
								</c:if> <c:if test="${personalInfo.carCondition == 2}">
									<c:out value="未购车"></c:out>
								</c:if>
							</li>
							<li><span>民族：</span>${personalInfo.ethnic}</li>
							<li><span>籍贯：</span>${personalInfo.birthLocation}</li>
							<li><span>家中排行：</span> 
								<c:if test="${personalInfo.homeRanking == 0}">
									<c:out value="独生子女"></c:out>
								</c:if> <c:if test="${personalInfo.homeRanking == 1}">
									<c:out value="老大"></c:out>
								</c:if> <c:if test="${personalInfo.homeRanking == 2}">
									<c:out value="老二"></c:out>
								</c:if> <c:if test="${personalInfo.homeRanking == 3}">
									<c:out value="老三及以后"></c:out>
								</c:if>
							</li>
							<li><span>有无子女： </span>
								<c:if test="${personalInfo.haveChildren == 0}">
									<c:out value="请选择"></c:out>
								</c:if> <c:if test="${personalInfo.haveChildren == 1}">
									<c:out value="小孩归自己"></c:out>
								</c:if> <c:if test="${personalInfo.haveChildren == 2}">
									<c:out value="小孩归对方"></c:out>
								</c:if>
							</li>
							<li><span>星座： </span>
								<c:if test="${personalInfo.constellation == 0}">
									<c:out value="请选择"></c:out>
								</c:if> <c:if test="${personalInfo.constellation == 1}">
									<c:out value="水瓶座"></c:out>
								</c:if> <c:if test="${personalInfo.constellation == 2}">
									<c:out value="双鱼座"></c:out>
								</c:if> <c:if test="${personalInfo.constellation == 3}">
									<c:out value="白羊座"></c:out>
								</c:if> <c:if test="${personalInfo.constellation == 4}">
									<c:out value="金牛座"></c:out>
								</c:if> <c:if test="${personalInfo.constellation == 5}">
									<c:out value="双子座"></c:out>
								</c:if> <c:if test="${personalInfo.constellation == 6}">
									<c:out value="巨蟹座"></c:out>
								</c:if> <c:if test="${personalInfo.constellation == 7}">
									<c:out value="狮子座"></c:out>
								</c:if> <c:if test="${personalInfo.constellation == 8}">
									<c:out value="处女座"></c:out>
								</c:if> <c:if test="${personalInfo.constellation == 9}">
									<c:out value="天秤座"></c:out>
								</c:if> <c:if test="${personalInfo.constellation == 10}">
									<c:out value="天蝎座"></c:out>
								</c:if> <c:if test="${personalInfo.constellation == 11}">
									<c:out value="射手座"></c:out>
								</c:if> <c:if test="${personalInfo.constellation == 12}">
									<c:out value="摩羯座"></c:out>
								</c:if>
							</li>
							<li><span>血型：</span>
								<c:if test="${personalInfo.bloodType == 0}">
									<c:out value="请选择"></c:out>
								</c:if> <c:if test="${personalInfo.bloodType == 1}">
									<c:out value="A型"></c:out>
								</c:if> <c:if test="${personalInfo.bloodType == 2}">
									<c:out value="B型"></c:out>
								</c:if> <c:if test="${personalInfo.bloodType == 3}">
									<c:out value="AB型"></c:out>
								</c:if> <c:if test="${personalInfo.bloodType == 4}">
									<c:out value="O型"></c:out>
								</c:if>
							</li>
							<li><span>属相： </span>
								<c:if test="${personalInfo.zodiac == 0}">
									<c:out value="请选择"></c:out>
								</c:if> 
								<c:if test="${personalInfo.zodiac == 1}">
									<c:out value="鼠"></c:out>
								</c:if> 
								<c:if test="${personalInfo.zodiac == 2}">
									<c:out value="牛"></c:out>
								</c:if> 
								<c:if test="${personalInfo.zodiac == 3}">
									<c:out value="虎"></c:out>
								</c:if> 
								<c:if test="${personalInfo.zodiac == 4}">
									<c:out value="兔"></c:out>
								</c:if> 
								<c:if test="${personalInfo.zodiac == 5}">
									<c:out value="龙"></c:out>
								</c:if> 
								<c:if test="${personalInfo.zodiac == 6}">
									<c:out value="蛇"></c:out>
								</c:if> 
								<c:if test="${personalInfo.zodiac == 7}">
									<c:out value="马"></c:out>
								</c:if> 
								<c:if test="${personalInfo.zodiac == 8}">
									<c:out value="羊"></c:out>
								</c:if> 
								<c:if test="${personalInfo.zodiac == 9}">
									<c:out value="猴"></c:out>
								</c:if> 
								<c:if test="${personalInfo.zodiac == 10}">
									<c:out value="鸡"></c:out>
								</c:if> 
								<c:if test="${personalInfo.zodiac == 11}">
									<c:out value="狗"></c:out>
								</c:if> 
								<c:if test="${personalInfo.zodiac == 12}">
									<c:out value="猪"></c:out>
								</c:if>
							</li>
							<li><span>宗教信仰：</span> 
								<c:if test="${personalInfo.religion == 0}">
									<c:out value="请选择"></c:out>
								</c:if> <c:if test="${personalInfo.religion == 1}">
									<c:out value="无宗教信仰"></c:out>
								</c:if> <c:if test="${personalInfo.religion == 2}">
									<c:out value="佛教"></c:out>
								</c:if> <c:if test="${personalInfo.religion == 3}">
									<c:out value="道教"></c:out>
								</c:if> <c:if test="${personalInfo.religion == 4}">
									<c:out value="儒教"></c:out>
								</c:if> <c:if test="${personalInfo.religion == 5}">
									<c:out value="基督教"></c:out>
								</c:if> <c:if test="${personalInfo.religion == 6}">
									<c:out value="犹太教"></c:out>
								</c:if> <c:if test="${personalInfo.religion == 7}">
									<c:out value="伊斯兰教"></c:out>
								</c:if> <c:if test="${personalInfo.religion == 8}">
									<c:out value="其他信仰"></c:out>
								</c:if>
							</li>
							<li><span>微博地址：</span>${personalInfo.weiboURL}</li>
							<li><span>豆瓣地址：</span>${personalInfo.doubanURL}</li>
						</ul>
						<div id="EditInfo">
							<a href="modifyPersonalInfo">编辑资料</a>
						</div>
					</div>
				</div>
				<div id="form2">
					<h1>我的问答</h1>
					Welcome! <br> ${user.username }<br>${user.id}
				</div>
			</div>
		</div>
		<div class="right">
			<h5>
				<label>我在右边</label>
			</h5>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
		</div>
		<div style="clear: both;"></div>
	</div>
	<script type="text/javascript" language="javascript">
		$("#tab-container").easytabs();
	</script>

	<jsp:include page="footer.jsp" />
</body>
</html>