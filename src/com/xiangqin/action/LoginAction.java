package com.xiangqin.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xiangqin.ORM.User;
import com.xiangqin.service.UserService;
import com.xiangqin.service.impl.UserServiceImpl;

public class LoginAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String id;
	private String password;
	private String checkcode;
	private Map<String, Object> session;
	private String msg;

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCheckcode() {
		return checkcode;
	}

	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}

	public String login() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession(true);
		if (!checkcode.equalsIgnoreCase(session.getAttribute("checkCode")
				.toString())) {
			msg = "验证码错误！";
			return ERROR;
		}
		UserService userservice = new UserServiceImpl();
		User user = userservice.getUser(id);
		ServletActionContext.getRequest().setAttribute("user", user);
		if (user == null) {
			msg = "用户不存在";
			return ERROR;
		}
		if (user.getPassword().equals(this.password))
			return SUCCESS;
		else{
			msg = "密码错误";
			return ERROR;
			}
	}
}