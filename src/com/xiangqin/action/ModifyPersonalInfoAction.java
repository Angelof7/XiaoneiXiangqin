package com.xiangqin.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

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
			String graducateFrom = req.getParameter("graduateFrom");
			String industry = req.getParameter("industry");
			String company = req.getParameter("company");
			String currentJob = req.getParameter("currentJob");
			int monthlyIncome = toInt(req.getParameter("monthlyIncome"));
			
			
			PersonalInfo pi = new PersonalInfo();
			pi.setNickName(nickName);
			pi.setMarriageStatus(marriageStatus);
			pi.setObjectType(objectType);
			pi.setGender(gender);
			pi.setAge(age);
			pi.setHeight(height);
			pi.setWeight(weight);
			
			
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
