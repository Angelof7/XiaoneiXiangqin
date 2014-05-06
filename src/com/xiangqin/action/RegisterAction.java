package com.xiangqin.action;

import javax.mail.MessagingException;

import com.opensymphony.xwork2.ActionSupport;
import com.xiangqin.ORM.User;
import com.xiangqin.service.impl.UserServiceImpl;
import com.xiangqin.util.EmailAuthentication;

@SuppressWarnings("serial")
public class RegisterAction extends ActionSupport {
    private String studentCard;
    private String email="hhhhhh";
     
    public String register() throws MessagingException{
    	User user = new User();
    	System.out.println(this.email+"===="+this.studentCard);
    	UserServiceImpl usi = new UserServiceImpl();
    	if(studentCard!=null && email!=null){
    		EmailAuthentication ea = new EmailAuthentication(this.email,this.studentCard);
    		user = usi.getUser(studentCard);
    		if(user!=null){
    		   return "exists";	
    		}else{
    			if(ea.sendMail()){
    				User createUser = new User();
    				createUser.setId(this.studentCard);
    				createUser.setPassword(ea.getCreatePassword());
    				usi.saveUser(createUser);
    				return "success";
    			}else{
    				return "failure";
    			}
    		}
    	}
		return "success";
    }
     
	public String getStudentCard() {
		return studentCard;
	}
	public void setStudentCard(String studentCard) {
		this.studentCard = studentCard;
	}
	public String getEmail() {
		return getEmail();
	}
	public void setEmail(String eamil) {
		this.email = eamil;
	}
     
}
