package com.xiangqin.action;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Pattern;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xiangqin.ORM.User;
import com.xiangqin.service.impl.UserServiceImpl;
import com.xiangqin.util.EmailAuthentication;
import com.xiangqin.util.EncrypMD5;
import com.xiangqin.util.VerificationId;

@SuppressWarnings("serial")
public class RegisterAction extends ActionSupport {
    private String studentCard;
    private String email;
    public String mesg = "";
    private String checkcode;


	public String register() throws MessagingException, IOException, NoSuchAlgorithmException{
    	User user = null;
    	UserServiceImpl usi = new UserServiceImpl();
    	HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession(true);
		System.out.println(session.getAttribute("checkCode"));
		if (!checkcode.equalsIgnoreCase(session.getAttribute("checkCode")
					.toString())) {
				mesg = "验证码错误！";
				return "erro";
		}
    	if(studentCard!=null){
    		VerificationId vi = new VerificationId(studentCard);//验证学生时间是否允许  
    		String regx = "^[A-Za-z]{2}[0-9]{7}$";
    		boolean flag = Pattern.matches(regx, studentCard);
    		System.out.println(flag);
    		if(!flag){
    			System.out.println("学号输入有问题");
    			mesg = "学号输入有误!";
    			return "erro";
    		}
        	if(vi.verificationId()){//判定输入学号是否满足此要求
    		  EmailAuthentication ea = new EmailAuthentication(this.studentCard,this.email);
    		  user = usi.getUser(studentCard);
    		  if(user!=null){
    			 mesg = "你已经注册，请直接登录，如果密码忘记，请找回密码!<a href='../findpwd/findpwd.jsp'>找回密码</a>";
    		     return "erro";	
    		  }else{    			
    			if(ea.sendMail()){
    				User createUser = new User();
    				createUser.setId(this.studentCard);
    				createUser.setPassword(EncrypMD5.eccrypt(ea.getCreatePassword()));
    				createUser.setEmail(this.studentCard+"@smail.nju.edu.cn");
                    createUser.setFirstlogin(1);
                    //createUser.setUsername("chenquan");
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
    public String getCheckcode() {
		return checkcode;
	}

	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}
}
