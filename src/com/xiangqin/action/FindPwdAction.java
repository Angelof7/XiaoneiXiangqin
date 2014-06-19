package com.xiangqin.action;

import java.security.NoSuchAlgorithmException;

import javax.mail.MessagingException;

import com.xiangqin.DAO.impl.UserDAOImpl;
import com.xiangqin.ORM.User;
import com.xiangqin.util.EmailAuthentication;
import com.xiangqin.util.EncrypMD5;

public class FindPwdAction {
    private String studentCard;
    public String getStudentCard() {
		return studentCard;
	}
	public void setStudentCard(String studentCard) {
		this.studentCard = studentCard;
	}
	private String mesg="";
    public String findPassword() throws MessagingException, NoSuchAlgorithmException{
    	String email=studentCard+"@smail.nju.edu.cn";
    	User user = new User();
    	UserDAOImpl udi = new UserDAOImpl();    	
    	//int index = email.indexOf("@");
    	//if(index!=-1){
    	//strStudentCard = email.substring(0,index);
    	user = udi.getUser(studentCard);
    	System.out.println("获取用户成功");
    	if(user==null){
    		mesg = "对不起，您还没有注册我们的账号！";
    		return "erro";
    	}else{
    		EmailAuthentication ea = new EmailAuthentication(studentCard,email);
    		if(ea.send2Email()){
    			  user.setPassword(EncrypMD5.eccrypt(ea.getCreatePassword()));
    			  udi.updateUser(user);
    			  return "success";
    		}else{
    			 mesg = "系统正忙，请稍后再试!";
    			 return "erro";
    		}
    	}
    }
	public String getMesg() {
		return mesg;
	}
	public void setMesg(String mesg) {
		this.mesg = mesg;
	}
}
