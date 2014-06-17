<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	function loadInfo() {
		$("#info").load("loadInfo", {
			"province" : $("#province").val(),
			"city" : $("#city").val(),
			"age_min" : $("#age_min").val(),
			"age_max" : $("#age_max").val()
		}, function(response, status) {
			if (status == "success") {
				var searchObj = eval('(' + response + ')');
				for (var i = 0; i < searchObj.pis.length; i++) {
					var str = '<p1>';
					str += searchObj.pis[i][0] + "</p1>";
					str += "<br/><p1>" + searchObj.pis[i][1] + "</p1>";
					str += "<br/><p1>" + searchObj.pis[i][2] + "</p1>";
					str += "<br/><p1>" + searchObj.pis[i][3] + "</p1>";
					txt = document.createElement('DIV');
					txt.innerHTML = str + "<hr/>";
					document.getElementById("content").appendChild(txt);
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
	}
</script>
</head>
<body onload="MyTest()">
	<h1>Json_UserSearch_Test</h1>

	居住地:
	<select id="province" onchange="test()">
		<option value="0">[-不限省份-]</option>
	</select>
	<select id="city">
		<option value="0">[-不限城市-]</option>
	</select>
	<br /> 年龄段:
	<select id="age_min" onchange="testage()">
		<option value=18 selected>18岁</option>
	</select>到
	<select id="age_max">
		<option value=26 selected>26岁</option>
	</select>
	<br />
	<input type="button" value="获取" id="btnGet" onclick="loadInfo()" />
	<div id="info"></div>
	<div id="content"></div>
</body>

</html>