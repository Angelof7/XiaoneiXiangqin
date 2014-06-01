<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.xiangqin.ORM.PersonalInfo" %>
<%@ page import="java.util.*" %>
<%
	PersonalInfo pi = (PersonalInfo)session.getAttribute("personalInfo");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
	<title>修改个人资料</title>
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
</head>
<body>
<%int i =1;%>
<script>alert('');</script>
	<form action="modifyPersonalInfo" method="POST">
		<table>
			<tr>
				<td><label for="">昵称：</label></td>
				<td><input type="text" name="nickName" value="<%= pi.getNickName() %>" /></td>
			</tr>
			<tr>
				<td><label for="">婚姻状态：</label></td>
				<td>
					<select name="marriageStatus">
						<option value="0">未婚</option>
						<option value="1">已婚</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label for="">我在寻找：</label></td>
				<td>
					<select name="objectType">
						<option value="0">结婚对象</option>
						<option value="1">恋人</option>
						<option value="2">普通朋友</option>
						<option value="3">知己</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label for="">性别：</label></td>
				<td>
					<select name="gender">
						<option value="0">男</option>
						<option value="1">女</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label for="">年龄：</label></td>
				<td><input type="text" name="age" value="" /></td>
			</tr>
			<tr>
				<td><label for="">身高(cm)：</label></td>
				<td><input type="text" name="height" value="" /></td>
			</tr>
			<tr>
				<td><label for="">体重(kg)：</label></td>
				<td><input type="text" name="weight" value="" /></td>
			</tr>
			<tr>
				<td><label for="">居住在：</label></td>
				<td><input type="text" name="liveLocation" value="" /></td>
			</tr>
			<tr>
				<td><label for="">学历：</label></td>
				<td>
					<select name="education">
						<option value="0">大专以下</option>
						<option value="1">大专</option>
						<option value="2">本科</option>
						<option value="3">硕士</option>
						<option value="4">博士</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label for="">毕业院校：</label></td>
				<td><input type="text" name="graduateFrom" value="" /></td>
			</tr>
			<tr>
				<td><label for="">行业：</label></td>
				<td>
					<select name="industry">
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
				</td>
			</tr>
			<tr>
				<td><label for="">工作单位：</label></td>
				<td><input type="text" name="company" value="" /></td>
			</tr>
			<tr>
				<td><label for="">目前职位：</label></td>
				<td>
					<select name="currentJob">
						<option value="0">请选择</option>
						<option value="1">普通职员</option>
						<option value="2">中层管理者</option>
						<option value="3">高层管理者</option>
						<option value="4">企业主</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label for="">月收入：</label></td>
				<td>
					<select name="monthlyIncome">
						<option value="0">请选择</option>
						<option value="1">2000以下</option>
						<option value="2">2000-4000</option>
						<option value="3">4000-6000</option>
						<option value="4">6000-10000</option>
						<option value="5">10000-15000</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label for="">户口：</label></td>
				<td><input type="text" name="account" value="" /></td>
			</tr>
			<tr>
				<td><label for="">住房情况：</label></td>
				<td>
					<select name="housingCondition">
						<option value="0">请选择</option>
						<option value="1">已购房</option>
						<option value="2">租房</option>
						<option value="3">单位宿舍</option>
						<option value="4">和家人同住</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label for="">购车情况：</label></td>
				<td>
					<select name="carCondition">
						<option value="0">请选择</option>
						<option value="1">已购车</option>
						<option value="2">未购车</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label for="">民族：</label></td>
				<td><input type="text" name="ethnic" value="" /></td>
			</tr>
			<tr>
				<td><label for="">籍贯：</label></td>
				<td><input type="text" name="weiboURL" value="" /></td>
			</tr>
			<tr>
				<td><label for="">家中排行：</label></td>
				<td>
					<select name="homeRanking">
						<option value="0">请选择</option>
						<option value="1">独生子女</option>
						<option value="2">老大</option>
						<option value="3">老二</option>
						<option value="4">老三及以后</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label for="">有无子女：</label></td>
				<td>
					<select name="haveChildren">
						<option value="0">请选择</option>
						<option value="1">小孩归自己</option>
						<option value="2">小孩归对方</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label for="">星座：</label></td>
				<td>
					<select name="constellation">
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
				</td>
			</tr>
			<tr>
				<td><label for="">血型：</label></td>
				<td>
					<select name="bloodType">
						<option value="0">请选择</option>
						<option value="1">A型</option>
						<option value="2">B型</option>
						<option value="3">AB型</option>
						<option value="4">O型</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label for="">属相：</label></td>
				<td>
					<select name="zodiac">
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
				</td>
			</tr>
			<tr>
				<td><label for="">宗教信仰：</label></td>
				<td>
					<select name="religion">
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
				</td>
			</tr>
			<tr>
				<td><label for="">微博地址：</label></td>
				<td><input type="text" name="weiboURL" value="" /></td>
			</tr>
			<tr>
				<td><label for="">豆瓣地址：</label></td>
				<td><input type="text" name="doubanURL" value="" /></td>
			</tr>
		</table>
	</form>
</body>
</html>