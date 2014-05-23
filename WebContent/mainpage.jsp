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
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/jquery.easytabs.min.js"></script>
<script type="text/javascript" src="js/jquery.hashchange.min.js"></script>

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
				<li class="tab"><a href="#person">个人主页</a></li>
				<li class="tab"><a href="#form1">个人资料</a></li>
				<li class="tab"><a href="#form2">我的问答</a></li>
			</ul>
			<div class="panel-container">
	            <div id="person">
	               <h1>我的动态</h1>
					Welcome! <br> ${user.username }<br>${user.id}
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