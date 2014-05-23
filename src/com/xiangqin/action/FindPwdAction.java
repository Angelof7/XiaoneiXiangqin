package com.xiangqin.action;

import javax.mail.MessagingException;

import com.xiangqin.DAO.impl.UserDAOImpl;
import com.xiangqin.ORM.User;
import com.xiangqin.util.EmailAuthentication;

public class FindPwdAction {
    private String email;
    private String mesg="";
    public String findPassword() throws MessagingException{
    	String strStudentCard;
    	User user = new User();
    	UserDAOImpl udi = new UserDAOImpl();    	
    	int index = email.indexOf("@");
    	if(index!=-1){
    	strStudentCard = email.substring(0,index);
    	user = udi.getUser(strStudentCard);
    	if(user==null){
    		mesg = "对不起，您还没有注册我们的账号！";
    		return "erro";
    	}else{
    		EmailAuthentication ea = new EmailAuthentication(strStudentCard,email);
    		if(ea.sendEmail(user.getPassword())){
    			  return "success";
    		}else{
    			 mesg = "系统正忙，请稍后再试!";
    			 return "erro";
    		}
    	}
    	}else{
    		mesg = "你输入的邮箱有误，请重新输入！";
    		return "erro";
    	}
    }
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public String getMesg() {
		return mesg;
	}
	public void setMesg(String mesg) {
		this.mesg = mesg;
	}
}
