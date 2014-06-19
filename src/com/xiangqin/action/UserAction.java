package com.xiangqin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xiangqin.ORM.PersonalInfo;
import com.xiangqin.ORM.User;
import com.xiangqin.service.PersonalInfoService;
import com.xiangqin.service.impl.PersonalInfoServiceImpl;

public class UserAction extends ActionSupport {

	/**
	 * 显示别人的主页
	 * 
	 * @author angelo
	 */
	private static final long serialVersionUID = 1L;

	private String user_id;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String execute() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession(true);
		User user = (User) session.getAttribute("user");
		if (user.getId().equals(user_id))
			return "mainpage";
		request.setAttribute("otherInfo", getPersonalInfo(user_id));
		return SUCCESS;
	}

	private PersonalInfo getPersonalInfo(String userId) {
		PersonalInfoService piService = new PersonalInfoServiceImpl();
		return piService.getPersonalInfoByUserId(userId);
	}
}
