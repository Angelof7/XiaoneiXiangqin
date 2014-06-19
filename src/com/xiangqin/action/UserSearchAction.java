package com.xiangqin.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.xiangqin.DAO.PersonalInfoDAO;
import com.xiangqin.DAO.impl.PersonalInfoDAOImpl;

public class UserSearchAction extends ActionSupport {

	/**
	 * 实现用户查找功能
	 * 
	 * @author angelo
	 */
	private static final long serialVersionUID = 1L;

	private String province;

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	private String city;

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	private int age_min;
	private int age_max;

	public int getAge_min() {
		return age_min;
	}

	public void setAge_min(int age_min) {
		this.age_min = age_min;
	}

	public int getAge_max() {
		return age_max;
	}

	public void setAge_max(int age_max) {
		this.age_max = age_max;
	}

	private List<Object> pis = new ArrayList<Object>();

	public List<Object> getPis() {
		return pis;
	}

	public void setPis(List<Object> pis) {
		this.pis = pis;
	}

	public String searchUser() {
		PersonalInfoDAO pdao = new PersonalInfoDAOImpl();
		pis = pdao.searchUser(province, city, age_min, age_max);
		return SUCCESS;
	}
}
