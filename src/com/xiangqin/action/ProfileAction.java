package com.xiangqin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xiangqin.DAO.PersonalInfoDAO;
import com.xiangqin.DAO.UserDAO;
import com.xiangqin.DAO.impl.PersonalInfoDAOImpl;
import com.xiangqin.DAO.impl.UserDAOImpl;
import com.xiangqin.ORM.PersonalInfo;
import com.xiangqin.ORM.User;
import com.xiangqin.service.PersonalInfoService;
import com.xiangqin.service.impl.PersonalInfoServiceImpl;

public class ProfileAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */
	private String nickname;
	private int sex;
	private int age;
	private int height;
	private int education;
	private String province;
	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	private String livelocation;
	private int salary;

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
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

	public int getEducation() {
		return education;
	}

	public void setEducation(int education) {
		this.education = education;
	}

	public String getLivelocation() {
		return livelocation;
	}

	public void setLivelocation(String livelocation) {
		this.livelocation = livelocation;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String profile() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession(true);
		User user = (User) session.getAttribute("user");
		PersonalInfo personalinfo = new PersonalInfo();
		personalinfo.setUserId(user.getId());
		personalinfo.setNickName(nickname);
		personalinfo.setGender(sex);
		personalinfo.setAge(age);
		personalinfo.setHeight(height);
		personalinfo.setEducation(education);
		personalinfo.setProvince(province);
		personalinfo.setLiveLocation(livelocation);
		personalinfo.setMonthlyIncome(salary);
		user.setFirstlogin(0);
		UserDAO userdao = new UserDAOImpl();
		userdao.updateUser(user);
		PersonalInfoDAO pi = new PersonalInfoDAOImpl();
		pi.savetPersonalInfo(personalinfo);
		session.setAttribute("personalInfo", getPersonalInfo(user));
		return SUCCESS;
	}

	private PersonalInfo getPersonalInfo(User user) {
		PersonalInfoService piService = new PersonalInfoServiceImpl();
		return piService.getPersonalInfoByUserId(user.getId());
	}

}
