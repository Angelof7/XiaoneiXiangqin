package com.xiangqin.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xiangqin.ORM.User;
import com.xiangqin.service.UserService;
import com.xiangqin.service.impl.UserServiceImpl;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport {
	private String username;
	private String password;
	private String id;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	/**
	 * 保存用户
	 * 
	 * @return
	 * @throws Exception
	 */
	public String saveUser() throws Exception {
		// TODO Auto-generated method stub
		User user = new User();
		user.setPassword(password);
		user.setUsername(username);

		UserService userservice = new UserServiceImpl();
		userservice.saveUser(user);

		return SUCCESS;
	}

	/**
	 * 取用户
	 * 
	 * @return
	 * @throws Exception
	 */
	public String showUser() throws Exception {
		UserService userservice = new UserServiceImpl();
		User user = userservice.showUser(id);
		ServletActionContext.getRequest().setAttribute("user", user);
		return SUCCESS;
	}
	
	public String login() throws Exception{
		UserService userservice = new UserServiceImpl();
		User user = userservice.showUser(id);
		ServletActionContext.getRequest().setAttribute("user", user);
		return SUCCESS;
	}
}
