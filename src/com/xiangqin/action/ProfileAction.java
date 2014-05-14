package com.xiangqin.action;

import com.opensymphony.xwork2.ActionSupport;
import com.xiangqin.ORM.UserInfo;
import com.xiangqin.service.UserInfoService;
import com.xiangqin.service.impl.UserInfoServiceImpl;

public class ProfileAction  extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String studentcard;
	private String studentname;
	private String sex;
	private String address;
	private String signuature;
	
	
	public String getStudentcard() {
		return studentcard;
	}


	public void setStudentcard(String studentcard) {
		this.studentcard = studentcard;
	}


	public String getStudentname() {
		return studentname;
	}


	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getSignuature() {
		return signuature;
	}


	public void setSignuature(String signuature) {
		this.signuature = signuature;
	}


	public String profile(){
		UserInfo userinfo = new UserInfo();
		userinfo.setStudentcard(this.studentcard);
		userinfo.setStudentname(this.studentname);
		userinfo.setSex(this.sex);
		userinfo.setAddress(this.address);
		userinfo.setSignuature(this.signuature);
		UserInfoService userinfoservice = new UserInfoServiceImpl();
		userinfoservice.saveUserInfo(userinfo);
		return "success";
	}




	
}
