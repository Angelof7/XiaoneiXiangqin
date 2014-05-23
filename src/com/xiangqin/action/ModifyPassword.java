package com.xiangqin.action;

import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xiangqin.ORM.User;
import com.xiangqin.service.UserService;
import com.xiangqin.service.impl.UserServiceImpl;
import com.xiangqin.util.EncrypMD5;

public class ModifyPassword extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String oldpwd;
	private String newpwd;
	private String checkcode;
	private String msg;

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getCheckcode() {
		return checkcode;
	}

	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}

	public String getOldpwd() {
		return oldpwd;
	}

	public void setOldpwd(String oldpwd) {
		this.oldpwd = oldpwd;
	}

	public String getNewpwd() {
		return newpwd;
	}

	public void setNewpwd(String newpwd) {
		this.newpwd = newpwd;
	}

	public String changePwd() throws NoSuchAlgorithmException {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession(true);
		User user = (User) session.getAttribute("user");
		if (user == null) {
			msg = "请先登录";
			return ERROR;
		}
		if (!checkcode.equalsIgnoreCase(session.getAttribute("checkCode")
				.toString())) {
			msg = "验证码错误！";
			return ERROR;
		}
		UserService userservice = new UserServiceImpl();

		if (user.getPassword().equals(EncrypMD5.eccrypt(oldpwd))) {
			user.setPassword(EncrypMD5.eccrypt(newpwd));
			userservice.updateUser(user);
			msg = user.getId() + ", 密码修改成功,请重新登录";
			session.invalidate();
			return SUCCESS;
		} else {
			msg = "密码错误";
			return ERROR;
		}
	}

}
