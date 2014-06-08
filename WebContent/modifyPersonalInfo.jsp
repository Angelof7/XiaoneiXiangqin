<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.xiangqin.ORM.PersonalInfo" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>修改个人资料</title>
	<meta name="keywords" content="南大,交友,相亲,征婚,约会,婚恋,免费交友,同城交友" />
	<meta name="description" content="南大旗下婚恋交友约会平台，优质单身男女全部身份验证，可安全交友。在花田免费交友，看信发信完全免费，同城交友精准推荐。来花田交友约会最靠谱！" />
	<meta name="viewport" content="width=device-width, initial-scale=0.5, minimum-scale=0.5, maximum-scale=2.0" />
	<link rel="apple-touch-icon-precomposed" href="img/logo_ipad.png" />
	<link rel="apple-touch-icon-precomposed" href="img/logo_ipad.png" />
	<link rel="shortcut icon" href="img/favicon.ico" />
	<link rel="stylesheet" href="css/main.min.css" />
	<link rel="stylesheet" href="css/page.min.css" />
	<script type="text/javascript" src="js/gae.js">
	<script>
		var CONFIG = {}; CONFIG['vendor'] = "";
	</script>
	<style type="text/css">
		.ad-main,.ad_960 {
			display: none !important;
			display: none
		}
		.adsafe_globalcss {
			display: none !important;
			display: none
		}
	</style>
	<link rel="stylesheet" href="123.css" />
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/jquery.ui.core.js"></script>
	<script src="js/jquery.ui.widget.js"></script>
	<script src="js/jquery.ui.datepicker.js"></script>
	<script type="text/javascript" src="js/date.js"></script>
	<style>
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,input,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video
	{
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
} /* HTML5 display-role reset for older browsers */
article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section
	{
	display: block;
	float: left;
}

select,input,button,button img,label {
	vertical-align: middle;
}

body {
	font: normal 12px/1.5 "Microsoft Yahei", "微软雅黑", Tahoma, Arial,
		Helvetica, STHeiti;
	webkit-font-smoothing: antialiased;
	-moz-font-smoothing: subpixel-antialiased;
	color: #666;
}

ol,ul {
	list-style: none;
}

blockquote,q {
	quotes: none;
}

blockquote:before,blockquote:after,q:before,q:after {
	content: '';
	content: none;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

em {
	font-style: normal
}

select,input,button,button img,label {
	vertical-align: middle;
}

input {
	font-family: "Microsoft Yahei", "微软雅黑";
	webkit-font-smoothing: antialiased;
	-moz-font-smoothing: subpixel-antialiased
}

input,input:focus,button,button:focus,select,textarea,textarea:focus {
	outline: none;
	-moz-outline: none;
	-webkit-outline: none;
}

input:focus {
	outline: none;
	-moz-outline: none;
	-webkit-outline: none;
}

textarea {
	resize: none;
}

a {
	color: #666;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

a:focus {
	outline: none;
	-moz-outline: none;
	-webkit-outline: none;
}

body {
	min-width: 960px;
}

.form-main {
	width: 700px;
	margin: 0 auto;
	padding-top: 40px;
}

.form-ipt-box {
	padding: 10px 0 10px 60px;
	clear: both;
}

.form-ipt-box .ipt {
	font-size: 14px;
	background: #fff
		url([img]http://staticfile.tujia.com/portalsite2/images/tInput.png[/img]);
	width: 200px;
	height: 28px;
	border: 1px solid #ccc;
}

.form-main .btnsp {
	background-position: -202px -33px;
	width: 97px;
	height: 34px;
	display: inline-block;
	margin-left: 45px;
}

.form-ipt-box .btn {
	width: 95px;
	height: 32px;
	background-position: 0 -35px;
	background-color: #DDD;
	cursor: pointer;
}

.form-main .btnsp,.form-ipt-box .btn {
	background: #ddd
		url(http://su.bdimg.com/static/superpage/img/spis_a9e8de8e.png[/img])
		no-repeat;
}

.form-ipt-box label {
	line-height: 30px;
	width: 70px;
	height: 30px;
	font-size: 14px;
}
</style>

<script type="text/javascript">
	function loadFun() {
		var height = window.document.getElementById("height");
		var op0 = window.document.createElement("OPTION");
		op0.value = 0;
		op0.innerHTML = "请选择";
		height.appendChild(op0);
		for (var i = 150; i <= 210; i++) {
			var op = window.document.createElement("OPTION");
			op.value = i;
			op.innerHTML = i + "厘米";
			height.appendChild(op);
		}
		setup();
		promptinfo();
	}
	function promptinfo() {
		var address = document.getElementById('address');
		var s1 = document.getElementById('s1');
		var s2 = document.getElementById('s2');
		address.value = s1.value + s2.value;
	}
	window.onload = loadFun;
	function checkBlur(name) {
		var $a = $("#" + name);
		$a.siblings('span').css("padding-left", "10px");
		if (name == "nickName") {
			checkLength('nickName', '昵称', '2', '8');
		} else {
			if ($a.val() == 0 && name == "height") {
				$a.siblings('span').text("身高不能为空").css("display",
						"inline-block").css("color", "red");
			} else if ($a.val() == 0 && name == "education") {
				$a.siblings('span').text("学历不能为空").css("display",
						"inline-block").css("color", "red");
			} else if ($a.val() == 0 && name == "salary") {
				$a.siblings('span').text("收入不能为空").css("display",
						"inline-block").css("color", "red");
			} else if (name == "s1") {
				var $b = $("#s2");
				if ($a.val() == "省份" || $b.val() == "地级市") {
					$a.siblings('span').text("居住地不能为空").css("display",
							"inline-block").css("color", "red");
				} else {
					$a.siblings('span').html(
							"<em class='e_06 dib' style='color:green;'>★</em>")
							.css("display", "inline-block");
				}
			} else if (name == "s2") {
				var $b = $("#s1");
				if ($a.val() == "地级市" || $b.val() == "省份") {
					$a.siblings('span').text("居住地不能为空").css("display",
							"inline-block").css("color", "red");
				} else {
					$a.siblings('span').html(
							"<em class='e_06 dib' style='color:green;'>★</em>")
							.css("display", "inline-block");
				}
			} else {
				$a.siblings('span').html(
						"<em class='e_06 dib' style='color:green;'>★</em>")
						.css("display", "inline-block");
			}
		}
	}
</script>
<script type="text/javascript">
	function checklocation(name) {
		if (name == "livelocation") {
			checkLength('livelocation', '地址', '1', '20');
		}
		if (name == "age") {
			checkLength('age', '年龄', '1', '3');
		}
	}
</script>
<%
	PersonalInfo pi = (PersonalInfo)session.getAttribute("personalInfo");
%>

</head>
<body class="pSignup" data-log="pSignup">
	<form action="profile">
		<header class="header">
			<div class="header-inner">
				<h1 class="header-logo">
					<a href="/">花田_南大唯一免费的大型婚恋交友社区</a>
				</h1>
				<div class="header-title">修改个人资料</div>
			</div>
			<div class="header-inset">
				<div class="header-inset-inner">
					<i></i>
				</div>
			</div>
		</header>
		<div class="content">
			<div class="signup-titleBox">
				<h2>南大软院旗下婚恋交友社区———</h2>
				<span class="signup-title-slogan">修改个人详细资料，找到合适的TA</span>
				<div class="signup-accountBox">
					<!-- <span class="text-gray">当前帐户：</span><span>？</span><a class="signup-change-account link-lightBlue" href="/logout" >切换帐号</a>-->
				</div>
			</div>
			<div class="mainBox">
				<div id="regOptions" class="form-group signup-group">
					<div class="form-row js-row">
						<label class="form-label"><span class="form-need">*</span><span
							class="label-justify-text2">昵称</span>：</label>
						<div class="form-control">
							<div class="form-input-wrapper">
								<label class="form-input-label text-gray js-nickNameLabel" style="display: none;">限12个汉字或24个英文字母</label>
								<input class="form-input js-nickName" name="nickname" id="nickName" type="text" onchange=changeName() onblur="checkBlur(this.id)" value="<%= pi.getNickName()==null ? "" : pi.getNickName() %>" />
								<span></span>
							</div>
						</div>
						<div class="form-tips">
							<span data-helptip="限12个汉字或24英文字母" class="text-icon-tips js-tips"></span>
						</div>
					</div>
					<div class="form-row js-row">
						<label class="form-label"><span class="form-need">*</span><span
							class="label-justify-text2">性别</span>：</label>
						<div class="form-control">
							<div class="form-radioGroup">
								<label class="form-radio"><input name="sex" id="mgender"						type="radio" value="1" /><span class="form-radio-label">男</span></label>
								<label class="form-radio"><input name="sex" id="wgender"
									type="radio" value="2" /><span class="form-radio-label">女</span></label>
							</div>
						</div>
						<div class="form-tips">
							<span class="text-icon-tips js-tips hidden"></span>
						</div>
					</div>
					<div class="form-row signup-basicInfo-birthday js-row">
						<label class="form-label"><span class="form-need">*</span><span
							class="label-justify-text2">年龄</span>：</label>
						<div class="form-control">
							<!-- <input class="form-input js-nickName" id="datepicker" type="text"  />-->
							<input class="form-input js-nickName" name="age" id="age"
								type="text" onblur="checklocation(this.id)" /><span></span>
						</div>
						<script type="text/javascript">
							var selYear = window.document
									.getElementById("selYear");
							var selMonth = window.document
									.getElementById("selMonth");
							var selDay = window.document
									.getElementById("selDay");
							new DateSelector(selYear, selMonth, selDay, 2004,
									2, 29);
						</script>
						<div class="form-tips">
							<span data-errortips="请选择您的生日" class="text-icon-tips js-tips hidden"></span>
						</div>
					</div>
					<div class="form-row js-row">
						<label class="form-label"><span class="form-need">*</span><span
							class="label-justify-text2">身高</span>：</label>
						<div class="form-control">
							<select class="form-select js-height js-needTips" name="height"
								id="height" onblur="checkBlur(this.id)"
								onchange="checkBlur(this.id)"></select><span></span>
						</div>
						<div class="form-tips">
							<span data-errortips="请选择您的身高" class="text-icon-tips js-tips hidden"></span>
						</div>
					</div>
					<div class="form-row js-row">
						<label class="form-label"><span class="form-need">*</span><span
							class="label-justify-text2">学历</span>：</label>
						<div class="form-control">
							<select class="form-select js-education js-needTips" name="education" id="education" onblur="checkBlur(this.id)"
								onchange="checkBlur(this.id)">
								<option value=0 selected>请选择</option>
								<option value=1>本科</option>
								<option value=2>硕士</option>
								<option value=3>博士</option>
							</select><span></span>
						</div>
						<div class="form-tips">
							<span data-errortips="请选择您的学历"
								class="text-icon-tips js-tips hidden"></span>
						</div>
					</div>
					<div class="form-row signup-basicInfo-city js-row">
						<label class="form-label"><span class="form-need">*</span><span
							class="label-justify-text3">居住地</span>：</label>
						<div class="form-control">
							<input class="form-input js-nickName" name="livelocation"
								id="livelocation" type="text" onblur="checklocation(this.id)" /><span></span>
						</div>
						<div class="form-tips">
							<span data-errortips="请选择您的居住地"
								class="text-icon-tips js-tips hidden"></span>
						</div>
					</div>
					<div class="form-row js-row">
						<label class="form-label">
							<span class="form-need">*</span>
							<span class="label-justify-text4">月均收入</span>：
						</label>
						<div class="form-control">
							<select class="form-select js-salary" name="salary" id="salary"
								onblur="checkBlur(this.id)" onchange="checkBlur(this.id)">
								<option value=0 selected>请选择</option>
								<option value=1>2000元以下</option>
								<option value=2>2000-4000元</option>
								<option value=3>4000-6000元</option>
								<option value=4>6000-10000元</option>
								<option value=5>10000以上</option>
							</select>
						</div>
						<div class="form-tips">
							<span data-errortips="请选择您的月均收入" class="text-icon-tips js-tips hidden"></span>
						</div>
					</div>
					
					
					<div class="form-row signup-basicInfo-birthday js-row">
						<label class="form-label">
						<span class="label-justify-text2">户口</span>：</label>
						<div class="form-control">
							<input class="form-input" name="account" id="account" type="text" value="<%= pi.getAccount() == null ? "" : pi.getAccount() %>"/>
						</div>
					</div>
					
					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text4">住房情况:</span>
						</label>
						<div class="form-control">
							<select class="form-select js-salary" name="housingCondition" id="housingCondition">
								<option value="0">请选择</option>
								<option value="1">已购房</option>
								<option value="2">租房</option>
								<option value="3">单位宿舍</option>
								<option value="4">和家人同住</option>						
							</select>
						</div>
					</div>
					
					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text4">购车情况:</span>
						</label>
						<div class="form-control">
							<select class="form-select" name="carCondition" id="carCondition">
								<option value="0">请选择</option>
								<option value="1">已购车</option>
								<option value="2">未购车</option>					
							</select>
						</div>
					</div>
					
					
					<div class="form-row signup-basicInfo-birthday js-row">
						<label class="form-label">
							<span class="label-justify-text2">民族:</span>
						</label>
						<div class="form-control">
							<input class="form-input" name="account" id="account" value="<%= pi.getEthnic()==null ? "" : pi.getEthnic() %>"  />
						</div>
					</div>
					
					
					<div class="form-row signup-basicInfo-birthday js-row">
						<label class="form-label">
							<span class="label-justify-text2">籍贯:</span>
						</label>
						<div class="form-control">
							<input class="form-input" name="account" id="account" type="text" value="<%= pi.getBirthLocation()==null ? "" : pi.getBirthLocation() %>"  /><span></span>
						</div>
					</div>
					
					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text4">家中排行:</span>
						</label>
						<div class="form-control">
							<select class="form-select" name="homeRanking" id="homeRanking" onblur="checkBlur(this.id)" onchange="checkBlur(this.id)">
								<option value="0">请选择</option>
								<option value="1">独生子女</option>
								<option value="2">老大</option>
								<option value="3">老二</option>
								<option value="4">老三及以后</option>				
							</select>
						</div>
					</div>
					
					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text4">有无子女:</span>
						</label>
						<div class="form-control">
							<select class="form-select" name="haveChildren" id="haveChildren">
								<option value="0">请选择</option>
								<option value="1">小孩归自己</option>
								<option value="2">小孩归对方</option>			
							</select>
						</div>
					</div>

					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text4">星座:</span>
						</label>
						<div class="form-control">
							<select class="form-select" name="constellation" id="constellation">
								<option value="0">请选择</option>
								<option value="1">水瓶座</option>
								<option value="2">双鱼座</option>
								<option value="3">白羊座</option>
								<option value="4">金牛</option>
								<option value="5">双子座</option>
								<option value="6">巨蟹座</option>
								<option value="7">狮子座</option>
								<option value="8">处女座</option>
								<option value="9">天秤座</option>
								<option value="10">天蝎座</option>
								<option value="11">射手座</option>
								<option value="12">摩羯座</option>			
							</select>
						</div>
					</div>
		
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text4">血型:</span>
						</label>
						<div class="form-control">
							<select class="form-select" name="bloodType" id="bloodType">
								<option value="0">请选择</option>
								<option value="1">A型</option>
								<option value="2">B型</option>
								<option value="3">AB型</option>
								<option value="4">O型</option>			
							</select>
						</div>
					</div>
		
				
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text4">属相:</span>
						</label>
						<div class="form-control">
							<select class="form-select" name="zodiac" id="zodiac">
								<option value="0">鼠</option>
								<option value="1">牛</option>
								<option value="2">虎</option>
								<option value="3">兔</option>
								<option value="4">龙</option>
								<option value="5">蛇</option>
								<option value="6">马</option>
								<option value="7">羊</option>
								<option value="8">猴</option>
								<option value="9">鸡</option>
								<option value="10">狗</option>
								<option value="11">猪</option>			
							</select>
						</div>
					</div>
					
					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text4">宗教信仰:</span>
						</label>
						<div class="form-control">
							<select class="form-select" name="religion" id="religion">
								<option value="0">请选择</option>
								<option value="1">无宗教信仰</option>
								<option value="2">佛教</option>
								<option value="3">道教</option>
								<option value="4">儒教</option>
								<option value="5">基督教</option>
								<option value="6">犹太教</option>
								<option value="7">伊斯兰教</option>
								<option value="8">其他信仰</option>			
							</select>
						</div>
					</div>
					
					<div class="form-row signup-basicInfo-birthday js-row">
						<label class="form-label">
							<span class="label-justify-text2">微博地址：</span>
						</label>
						<div class="form-control">
							<input class="form-input js-nickName" name="weiboURL" id="weiboURL" type="text" value="<%= (pi.getWeiboURL()==null)?"":pi.getWeiboURL() %>"  /><span></span>
						</div>
					</div>
					
					
					<div class="form-row signup-basicInfo-birthday js-row">
						<label class="form-label">
							<span class="label-justify-text2">豆瓣地址：</span>
						</label>
						<div class="form-control">
							<input class="form-input" name="doubanURL" id="doubanURL" type="text" value="<%= (pi.getDoubanURL()==null)?"":pi.getDoubanURL() %>"  /><span></span>
						</div>
					</div>

					<div class="signup-line"></div>
					<div class="form-btn n-btn-box js-row">
						<label class="form-label">&nbsp;</label>
						<div style="padding-left: 200px">
							<button type="submit">确认修改</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<script type="text/javascript" src="js/common.js"></script>
	</form>
</body>
</html>

