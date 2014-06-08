<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.xiangqin.ORM.PersonalInfo" %>
<%@ page import="java.util.*" %>
<%
	PersonalInfo pi = (PersonalInfo)session.getAttribute("personalInfo");
%>
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
	<script src="js/jquery.ui.core.js"></script>
	<script src="js/jquery.ui.widget.js"></script>
	<script src="js/jquery.ui.datepicker.js"></script>
	<script type="text/javascript" src="js/date.js"></script>
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("select[name='marriageStatus']").find("option[value='<%=pi.getMarriageStatus()%>']").attr("selected","selected");
			$("select[name='objectType']").find("option[value='<%=pi.getObjectType()%>']").attr("selected","selected");
			$("select[name='gender']").find("option[value='<%=pi.getGender()%>']").attr("selected","selected");
			$("select[name='education']").find("option[value='<%=pi.getEducation()%>']").attr("selected","selected");
			$("select[name='industry']").find("option[value='<%=pi.getIndustry()%>']").attr("selected","selected");
			$("select[name='currentJob']").find("option[value='<%=pi.getCurrentJob()%>']").attr("selected","selected");
			$("select[name='monthlyIncome']").find("option[value='<%=pi.getMonthlyIncome()%>']").attr("selected","selected");
			$("select[name='housingCondition']").find("option[value='<%=pi.getHousingCondition()%>']").attr("selected","selected");
			$("select[name='carCondition']").find("option[value='<%=pi.getCarCondition()%>']").attr("selected","selected");
			$("select[name='homeRanking']").find("option[value='<%=pi.getHomeRanking()%>']").attr("selected","selected");
			$("select[name='haveChildren']").find("option[value='<%=pi.getHaveChildren()%>']").attr("selected","selected");
			$("select[name='constellation']").find("option[value='<%=pi.getConstellation()%>']").attr("selected","selected");
			$("select[name='bloodType']").find("option[value='<%=pi.getBloodType()%>']").attr("selected","selected");
			$("select[name='zodiac']").find("option[value='<%=pi.getZodiac()%>']").attr("selected","selected");
			$("select[name='religion']").find("option[value='<%=pi.getReligion()%>']").attr("selected","selected");
		});
	</script>
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
</head>
<body class="pSignup" data-log="pSignup">
	<form action="modifyPersonalInfo" method="POST">
		<header class="header">
			<div class="header-inner">
				<h1 class="header-logo">
					<a href="/XiaoneiXiangqin">花田_南大唯一免费的大型婚恋交友社区</a>
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
						<label class="form-label">
							<span class="label-justify-text2">昵称</span>
							</label>
						<div class="form-control">
							<div class="form-input-wrapper">
								<label class="form-input-label text-gray js-nickNameLabel" style="display: none;">限12个汉字或24个英文字母</label>
								<input class="form-input js-nickName" name="nickName" id="nickName" type="text" value="<%= pi.getNickName()==null ? "" : pi.getNickName() %>" />
							</div>
						</div>
					</div>
					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text4">婚姻状态</span>
						</label>
						<div class="form-control">
							<select class="form-select" name="marriageStatus" id="marriageStatus">
								<option value="0">请选择</option>
								<option value="1">未婚</option>
								<option value="2">已婚</option>
							</select>
						</div>
					</div>
					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text4">我在寻找</span>
						</label>
						<div class="form-control">
							<select class="form-select" name="objectType" id="objectType">
								<option value="0">结婚对象</option>
								<option value="1">恋人</option>
								<option value="2">普通朋友</option>
								<option value="3">知己</option>
							</select>
						</div>
					</div>
					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text2">性别</span>
						</label>
						<div class="form-control">
							<select class="form-select" name="gender" id="gender">
								<option value="0">男</option>
								<option value="1">女</option>
							</select>
						</div>
					</div>
					
					<div class="form-row signup-basicInfo-birthday js-row">
						<label class="form-label">
							<span class="label-justify-text2">年龄</span>
						</label>
						<div class="form-control">
							<input class="form-input" name="age" id="age" type="text" value="<%= pi.getAge() %>" />
						</div>
					</div>
					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text4">身高 cm</span>
						</label>
						<div class="form-control">
							<input type="text" class="form-input" name="height" id="height" value="<%=pi.getHeight()%>" />
						</div>
					</div>
					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text4">体重 kg</span>
						</label>
						<div class="form-control">
							<input type="text" class="form-input" name="weight" id="weight" value="<%=pi.getWeight()%>" />
						</div>
					</div>
					
					<div class="form-row signup-basicInfo-city js-row">
						<label class="form-label"><span
							class="label-justify-text3">居住在</span>
							</label>
						<div class="form-control">
							<input class="form-input" name="liveLocation" id="liveLocation" type="text" value="<%= pi.getLiveLocation() ==null ? "" :pi.getLiveLocation() %>"  />
						</div>
					</div>
					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text2">学历</span>
						</label>
						<div class="form-control">
							<select class="form-select" name="education" id="education">
								<option value="0">大专以下</option>
								<option value="1">大专</option>
								<option value="2">本科</option>
								<option value="3">硕士</option>
								<option value="4">博士</option>
							</select>
						</div>
					</div>
					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text4">毕业院校</span>
						</label>
						<div class="form-control">
							<input type="text" class="form-input" name="graduateFrom" id="graduateFrom" value="<%= pi.getGraduateFrom() %>" />
						</div>
					</div>
					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text2">行业</span>
						</label>
						<div class="form-control">
							<select class="form-select" name="industry" id="industry">
								<option value="0">请选择</option>
								<option value="1">计算机/互联网/通信</option>
								<option value="2">公务员/事业单位</option>
								<option value="3">教师</option>
								<option value="4">医生</option>
								<option value="5">护士</option>
								<option value="6">乘务员</option>
								<option value="7">生产/工艺/制造</option>
								<option value="8">商业/服务业/个体经营</option>
								<option value="9">融/银行/投资/保险</option>
								<option value="10">文化/广告/传媒</option>
								<option value="11">娱乐/艺术/表演</option>
								<option value="12">律师/法务</option>
								<option value="13">教育/培训/管理咨询</option>
								<option value="14">建筑/房地产/物业</option>
								<option value="15">消费零售/贸易/物流</option>
								<option value="16">酒店/旅游</option>
								<option value="17">现代农业</option>
								<option value="18">在校学生</option>
							</select>
						</div>
					</div>
					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text4">工作单位</span>
						</label>
						<div class="form-control">
							<input type="text" class="form-input" name="company" id="company" value="<%= pi.getCompany() %>" />
						</div>
					</div>
					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text4">目前职位</span>
						</label>
						<div class="form-control">
							<select class="form-select" name="currentJob" id="currentJob">
								<option value="0">请选择</option>
								<option value="1">普通职员</option>
								<option value="2">中层管理者</option>
								<option value="3">高层管理者</option>
								<option value="4">企业主</option>								
							</select>
						</div>
					</div>
					
					<div class="form-row js-row">
						<label class="form-label">
							<span class="label-justify-text3">月收入</span>
						</label>
						<div class="form-control">
							<select class="form-select js-salary" name="monthlyIncome" id="monthlyIncome"
								onblur="checkBlur(this.id)" onchange="checkBlur(this.id)">
								<option value=0 selected>请选择</option>
								<option value=1>2000元以下</option>
								<option value=2>2000-4000元</option>
								<option value=3>4000-6000元</option>
								<option value=4>6000-10000元</option>
								<option value=5>10000以上</option>
							</select>
						</div>
					</div>
					
					
					<div class="form-row signup-basicInfo-birthday js-row">
						<label class="form-label">
						<span class="label-justify-text2">户口</span></label>
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
							<input class="form-input" name="ethnic" id="ethnic" value="<%= pi.getEthnic()==null ? "" : pi.getEthnic() %>"  />
						</div>
					</div>
					
					
					<div class="form-row signup-basicInfo-birthday js-row">
						<label class="form-label">
							<span class="label-justify-text2">籍贯:</span>
						</label>
						<div class="form-control">
							<input class="form-input" name="birthLication" id="birthLocation" type="text" value="<%= pi.getBirthLocation()==null ? "" : pi.getBirthLocation() %>"  /><span></span>
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
							<span class="label-justify-text2">星座</span>
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
							<span class="label-justify-text2">血型</span>
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
							<span class="label-justify-text2">属相</span>
						</label>
						<div class="form-control">
							<select class="form-select" name="zodiac" id="zodiac">
								<option value="0">请选择</option>
								<option value="1">鼠</option>
								<option value="2">牛</option>
								<option value="3">虎</option>
								<option value="4">兔</option>
								<option value="5">龙</option>
								<option value="6">蛇</option>
								<option value="7">马</option>
								<option value="8">羊</option>
								<option value="9">猴</option>
								<option value="10">鸡</option>
								<option value="11">狗</option>
								<option value="12">猪</option>			
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
							<span class="label-justify-text4">微博地址</span>
						</label>
						<div class="form-control">
							<input class="form-input" name="weiboURL" id="weiboURL" type="text" value="<%= pi.getWeiboURL()==null ? "" : pi.getWeiboURL() %>"  />
						</div>
					</div>
					
					<div class="form-row signup-basicInfo-birthday js-row">
						<label class="form-label">
							<span class="label-justify-text4">豆瓣地址</span>
						</label>
						<div class="form-control">
							<input class="form-input" name="doubanURL" id="doubanURL" type="text" value="<%= pi.getDoubanURL()==null? "" : pi.getDoubanURL() %>"/>
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

