package com.xiangqin.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xiangqin.ORM.PersonalInfo;

/**
 * @author TianTian
 */
public class ModifyPersonalInfoAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	
	public String execute() {
		HttpServletRequest req = ServletActionContext.getRequest();
		if(req.getMethod() == "Get"){
			return "REDIRECT";
		}else{
			String nickName = req.getParameter("nickName");
			int marriageStatus = toInt(req.getParameter("marriageStatus"));
			int objectType = toInt(req.getParameter("objectType"));
			int gender = toInt(req.getParameter("gender"));
			int age = toInt(req.getParameter("age"));
			int height = toInt(req.getParameter("height"));
			int weight = toInt(req.getParameter("weight"));
			String liveLocation = req.getParameter("liveLocation");
			int education = toInt(req.getParameter("education"));
			String graduateFrom = req.getParameter("graduateFrom");
			int industry = toInt(req.getParameter("industry"));
			String company = req.getParameter("company");
			int currentJob = toInt(req.getParameter("currentJob"));
			int monthlyIncome = toInt(req.getParameter("monthlyIncome"));
			
			String account = req.getParameter("account");
			int housingCondition = toInt(req.getParameter("housingCondition"));
			int carCondition = toInt(req.getParameter("carCondition"));
			String ethnic = req.getParameter("ethnic");
			String birthLocation = req.getParameter("birthLocation");
			int homeRanking = toInt(req.getParameter("homeRanking"));
			int haveChildren = toInt(req.getParameter("haveChildren"));
			int constellation = toInt(req.getParameter("constellation"));
			int bloodType = toInt(req.getParameter("bloodType"));
			int zodiac = toInt(req.getParameter("zodiac"));
			int religion = toInt(req.getParameter("religion"));
			String weiboURL = req.getParameter("weiboURL");
			String doubanURL = req.getParameter("doubanURL");
			
			PersonalInfo pi = new PersonalInfo();
			pi.setNickName(nickName);
			pi.setMarriageStatus(marriageStatus);
			pi.setObjectType(objectType);
			pi.setGender(gender);
			pi.setAge(age);
			pi.setHeight(height);
			pi.setWeight(weight);
			pi.setLiveLocation(liveLocation);
			pi.setEducation(education);
			pi.setGraduateFrom(graduateFrom);
			pi.setIndustry(industry);
			pi.setCompany(company);
			pi.setCurrentJob(currentJob);
			pi.setMonthlyIncome(monthlyIncome);
			pi.setAccount(account);
			pi.setHousingCondition(housingCondition);
			pi.setCarCondition(carCondition);
			pi.setEthnic(ethnic);
			pi.setBirthLocation(birthLocation);
			pi.setHomeRanking(homeRanking);
			pi.setHaveChildren(haveChildren);
			pi.setConstellation(constellation);
			pi.setBloodType(bloodType);
			pi.setZodiac(zodiac);
			pi.setReligion(religion);
			pi.setWeiboURL(weiboURL);
			pi.setDoubanURL(doubanURL);
			ActionContext.getContext().getSession().put("personalInfo", pi);
			return "SUCCESS";
		}
	}
	
	private int toInt(String in){
		int out = 0;
		try{
			out = Integer.parseInt(in);
		}catch(NumberFormatException  e){
			e.printStackTrace();
		}
		return out;
	}
	
	
}
