package com.xiangqin.ORM;
/**
 * 
 * @author Tian
 *
 */
public class DetailInfo {
	//	primary key
	private int id;
	//	�û�ID
	private int userId;
	//	�ǳ�
	private String nickName;
	//	0 δ�飻1�ѻ�
	private int MarriageStatus;
	//	0 ������1 ���ˣ�2  ��ͨ���ѣ�3֪��
	private int ObjectType;
	private int gender;
	private int age;
	private int height;
	private int weight;
	//	��ס��
	private String liveLocation;
	//  0 ��ר���£�1��ר��2���ƣ�3˶ʿ��4��ʿ
	private int education;
	//	��ҵԺУ
	private String graduateFrom;
	//	��ҵ
	private String industry;
	//	������λ
	private String company;
	//	��ǰְλ
	private String currentJob;
	//	������
	private int monthlyIncome;
	//	����
	private String account;
	//	0��ѡ��1�ѹ�����2�ⷿ��3��λ���᣻4�ͼ���ͬס
	private int housingCondition;
	//	0��ѡ��1�ѹ�����2δ����
	private int carCondition;
	//	����
	private String ethnic;
	//	����
	private String birthLocation;
	//	0������Ů��1�ϴ�2�϶�����������
	private int homeRanking;
	//  0��ѡ��1С�����Լ���2С����Է�
	private int haveChildern;
	//	����
	private String constellation;
	//	0��ѡ��1 A�ͣ�2 B�ͣ�3 AB�ͣ�4 O��
	private int bloodType;
	//  0 ��1ţ��2����3�ã�4����5�ߣ�6��7��8�9����10����11��
	private int zodiac;
	//	0��ѡ��1 ���ڽ�������2 ��̣�3���̣�4��̣�5�����̣�6��̫�̣�7��˹���̣�8������
	private int religion;
	//	΢����ַ
	private String weiboURL;
	//	�����ַ
	private	String doubanURL;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
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