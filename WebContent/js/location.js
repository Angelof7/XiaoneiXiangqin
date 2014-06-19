var cityArr = new Array();
cityArr["湖南"] = new Array("长沙", "株洲", "湘潭", "常德", "娄底", "怀化");
cityArr["北京"] = new Array("京城", "朝阳", "海淀", "硅谷", "东城", "西城");
cityArr["江苏"] = new Array("南京", "苏州", "无锡", "常州", "扬州", "盐城", "镇江", "泰州", "南通",
		"宿迁", "淮安", "徐州", "连云港");
// 写一个查询的目标函数
function test() {
	// 找到相应的省份和城市
	var provinces = document.getElementById("province");
	var citys = document.getElementById("livelocation");
	// 清空
	citys.length = 0;
	// 使用嵌套循环找到省份说对应的城市
	for ( var i in cityArr) {
		// 循环省份数组里面的value数据
		if (i == provinces.value) {
			// 如果确定是该省份下的城市，那么循环遍历
			citys.add(new Option("[-不限城市-]", "0"));
			for ( var j in cityArr[i]) {
				citys.add(new Option(cityArr[i][j], cityArr[i][j]));
			}
		}
	}
}