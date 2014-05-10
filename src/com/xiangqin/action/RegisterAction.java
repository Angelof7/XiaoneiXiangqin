package com.xiangqin.action;

import javax.mail.MessagingException;

import com.opensymphony.xwork2.ActionSupport;
import com.xiangqin.ORM.User;
import com.xiangqin.service.impl.UserServiceImpl;
import com.xiangqin.util.EmailAuthentication;

@SuppressWarnings("serial")
public class RegisterAction extends ActionSupport {
    private String studentCard;
    private String email;
     
    public String register() throws MessagingException{
    	User user = null;
    	System.out.println(this.email+"===="+this.studentCard);
    	UserServiceImpl usi = new UserServiceImpl();
    	if(studentCard!=null){
    		EmailAuthentication ea = new EmailAuthentication(this.studentCard,this.email);
    		System.out.println("获取用户");
    		user = usi.getUser(studentCard);
    		System.out.println("获取用户成功");
    		if(user!=null){
    		   return "exists";	
    		}else{
    			System.out.println("到这里了");
    			if(ea.sendMail()){
    				User createUser = new User();
    				createUser.setId(this.studentCard);
    				createUser.setPassword(ea.getCreatePassword());
    				createUser.setEmail(this.studentCard+"@smail.nju.edu.cn");
                    createUser.setFirstlogin(1);
                    createUser.setUsername("chenquan");
    				usi.saveUser(createUser);
    				return "success";
    			}else{
    				return "failure";
    			}
    		}
    	}
		return "erro";
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
	public void setEmail() {
		this.email = this.studentCard+"@smail.nju.edu.cn";
	}
     
}
