package com.xiangqin.action;

import java.io.IOException;
import java.util.regex.Pattern;

import javax.mail.MessagingException;

import com.opensymphony.xwork2.ActionSupport;
import com.xiangqin.ORM.User;
import com.xiangqin.service.impl.UserServiceImpl;
import com.xiangqin.util.EmailAuthentication;
import com.xiangqin.util.VerificationId;

@SuppressWarnings("serial")
public class RegisterAction extends ActionSupport {
    private String studentCard;
    private String email;
    public String mesg = ""; 
    public String register() throws MessagingException, IOException{
    	User user = null;
    	UserServiceImpl usi = new UserServiceImpl();	
    	if(studentCard!=null){
    		VerificationId vi = new VerificationId(studentCard);//验证学生时间是否允许  
    		String regx = "^\\w{2}\\d{7}";
        	if(Pattern.matches(regx, studentCard)&&vi.verificationId()){//判定输入学号是否满足此要求
    		  EmailAuthentication ea = new EmailAuthentication(this.studentCard,this.email);
    		  user = usi.getUser(studentCard);
    		  if(user!=null){
    			 mesg = "你已经注册，请直接登录，如果密码忘记，请找回密码!<a href='/findpwd.jsp'>找回密码</a>";
    		     return "erro";	
    		  }else{    			
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
    				mesg = "系统正忙，请稍后再试，<a href='./register.jsp'>返回注册</a>";
    				return "erro";
    			}
    		 }
    	  }
          System.out.println(vi.getStudentAcademy());
          mesg = vi.getMessage()+"<a href='./register.jsp'>返回注册</a>";
          return "erro";
    	}
    	mesg = "你注册的用户已经存在，请直接登录，<a href='./../login.jsp'>直接登录</a>";
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
