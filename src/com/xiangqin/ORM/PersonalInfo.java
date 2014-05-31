package com.xiangqin.ORM;
/**
 * 
 * 个人资料类，用于在“我的资料”选项卡下面进行建模
 * @author TianTian
 *
 */
public class PersonalInfo {
	//	主键
	private int id;
	//	用户ID，与User表的Id相同
	private String userId;
	//	昵称
	private String nickName;
	//	0 未婚；1已婚
	private int MarriageStatus;
	//	0 结婚对象；1 恋人；2  普通朋友；3知己
	private int ObjectType;
	//	0男, 1女
	private int gender;
	private int age;
	private int height;
	private int weight;
	//	居住地
	private String liveLocation;
	//  0 大专以下；1大专；2本科；3硕士；4博士
	private int education;
	//	毕业院校
	private String graduateFrom;
	//	行业
	private String industry;
	//	工作单位
	private String company;
	//	当前职位
	private String currentJob;
	//	0请选择；1 2000元以下   2 2000-4000  3 4000-6000 4 6000-10000  5  10000-15000  
	//	6  15000-20000   7  20000以上
	private int monthlyIncome;
	//	户口
	private String account;
	//	0请选择；1已购房；2租房；3单位宿舍；4和家人同住
	private int housingCondition;
	//	0请选择；1已购车；2未购车
	private int carCondition;
	//	民族
	private String ethnic;
	//	籍贯
	private String birthLocation;
	//	0独生子女；1老大；2老二；依次类推
	private int homeRanking;
	//  0请选择；1小孩归自己；2小孩归对方
	private int haveChildern;
	//	星座
	private String constellation;
	//	0请选择；1 A型；2 B型；3 AB型；4 O型
	private int bloodType;
	//  0 鼠；1牛；2虎；3兔；4龙；5蛇；6马；7羊；8猴；9鸡；10狗；11猪
	private int zodiac;
	//	0请选择；1 无宗教信仰；2 佛教；3道教；4儒教；5基督教；6犹太教；7伊斯兰教；8其他教
	private int religion;
	//	微博地址
	private String weiboURL;
	//	豆瓣地址
	private	String doubanURL;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public int getMarriageStatus() {
		return MarriageStatus;
	}
	public void setMarriageStatus(int marriageStatus) {
		MarriageStatus = marriageStatus;
	}
	public int getObjectType() {
		return ObjectType;
	}
	public void setObjectType(int objectType) {
		ObjectType = objectType;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public String getLiveLocation() {
		return liveLocation;
	}
	public void setLiveLocation(String liveLocation) {
		this.liveLocation = liveLocation;
	}
	public int getEducation() {
		return education;
	}
	public void setEducation(int education) {
		this.education = education;
	}
	public String getGraduateFrom() {
		return graduateFrom;
	}
	public void setGraduateFrom(String graduateFrom) {
		this.graduateFrom = graduateFrom;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getCurrentJob() {
		return currentJob;
	}
	public void setCurrentJob(String currentJob) {
		this.currentJob = currentJob;
	}
	public int getMonthlyIncome() {
		return monthlyIncome;
	}
	public void setMonthlyIncome(int monthlyIncome) {
		this.monthlyIncome = monthlyIncome;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public int getHousingCondition() {
		return housingCondition;
	}
	public void setHousingCondition(int housingCondition) {
		this.housingCondition = housingCondition;
	}
	public int getCarCondition() {
		return carCondition;
	}
	public void setCarCondition(int carCondition) {
		this.carCondition = carCondition;
	}
	public String getEthnic() {
		return ethnic;
	}
	public void setEthnic(String ethnic) {
		this.ethnic = ethnic;
	}
	public String getBirthLocation() {
		return birthLocation;
	}
	public void setBirthLocation(String birthLocation) {
		this.birthLocation = birthLocation;
	}
	public int getHomeRanking() {
		return homeRanking;
	}
	public void setHomeRanking(int homeRanking) {
		this.homeRanking = homeRanking;
	}
	public int getHaveChildern() {
		return haveChildern;
	}
	public void setHaveChildern(int haveChildern) {
		this.haveChildern = haveChildern;
	}
	public String getConstellation() {
		return constellation;
	}
	public void setConstellation(String constellation) {
		this.constellation = constellation;
	}
	public int getBloodType() {
		return bloodType;
	}
	public void setBloodType(int bloodType) {
		this.bloodType = bloodType;
	}
	public int getZodiac() {
		return zodiac;
	}
	public void setZodiac(int zodiac) {
		this.zodiac = zodiac;
	}
	public int getReligion() {
		return religion;
	}
	public void setReligion(int religion) {
		this.religion = religion;
	}
	public String getWeiboURL() {
		return weiboURL;
	}
	public void setWeiboURL(String weiboURL) {
		this.weiboURL = weiboURL;
	}
	public String getDoubanURL() {
		return doubanURL;
	}
	public void setDoubanURL(String doubanURL) {
		this.doubanURL = doubanURL;
	}
}