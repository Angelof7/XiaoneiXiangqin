package com.xiangqin.util;


import java.util.Date;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailAuthentication {
    private String email;
    private String userId;
    private String createPassword;
    public EmailAuthentication(String userId,String iEmail){
    	setEmail(iEmail);
    	setUserId(userId);
    }
    public boolean sendMail() throws MessagingException{
    	String adminEmail = "chenspring2";//我们的邮箱
    	String adminPassword = "chenquan901022";//我们的邮箱密码
        this.createPassword = org.apache.commons.lang.RandomStringUtils.random(6, true, true);//生成的用户密码
    	String url = "http://localhost:8081/Xiangqin/login.jsp";
    	Properties props = new Properties();  
        props.setProperty("mail.smtp.host", "smtp.gmail.com");  
        props.setProperty("mail.smtp.auth", "true");   
        props.setProperty("mail.port", "587"); 
        props.put("mail.smtp.starttls.enable", "true");
        Authenticator authenticator = new MyAuthenticator(adminEmail, adminPassword);   
        javax.mail.Session session = javax.mail.Session.getDefaultInstance(props,authenticator);  
        session.setDebug(true);   
        
        Address from = new InternetAddress(adminEmail);  
        Address to = new InternetAddress(this.userId+"@smail.nju.edu.cn");    
        MimeMessage msg = new MimeMessage(session);  
        msg.setFrom(from);  
        msg.setSubject("南大相亲网站注册验证,测试用");  
        msg.setSentDate(new Date());  
        msg.setContent("<h3>欢迎注册南大相亲网</h3><p>你的用户名为:"+this.userId+"</p><p>你的密码为:"+createPassword+"</p><a href='" + url + "'>点击" + url + "完成注册</a>", 
        		 "text/html;charset=utf-8");  
        msg.setRecipient(RecipientType.TO, to); 
        Transport.send(msg);
    	return true;
    }
    /*****
     * 用于找回密码
     * @param pwd
     * @return
     * @throws MessagingException 
     */
    public boolean sendEmail(String pwd) throws MessagingException{
    	String adminEmail = "chenspring2";//我们的邮箱
    	String adminPassword = "chenquan901022";//我们的邮箱密码
        this.createPassword = pwd;
    	String url = "http://localhost:8081/Xiangqin/login.jsp";
    	Properties props = new Properties();  
        props.setProperty("mail.smtp.host", "smtp.gmail.com");  
        props.setProperty("mail.smtp.auth", "true");   
        props.setProperty("mail.port", "587"); 
        props.put("mail.smtp.starttls.enable", "true");
        Authenticator authenticator = new MyAuthenticator(adminEmail, adminPassword);   
        javax.mail.Session session = javax.mail.Session.getDefaultInstance(props,authenticator);  
        session.setDebug(true);   
        
        Address from = new InternetAddress(adminEmail);  
        Address to = new InternetAddress(email);    
        MimeMessage msg = new MimeMessage(session);  
        msg.setFrom(from);  
        msg.setSubject("南大相亲网站注册验证,测试用");  
        msg.setSentDate(new Date());  
        msg.setContent("<h3>欢迎注册南大相亲网</h3><p>你的用户名为:"+this.userId+"</p><p>你的密码为:"+createPassword+"</p><a href='" + url + "'>点击" + url + "完成注册</a>", 
        		 "text/html;charset=utf-8");  
        msg.setRecipient(RecipientType.TO, to); 
        Transport.send(msg);
    	return true;
    }
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getCreatePassword() {
		return createPassword;
	}
	public void setCreatePassword(String createPassword) {
		this.createPassword = createPassword;
	}
	
	public static void main(String []args) throws MessagingException{
		EmailAuthentication ea = new EmailAuthentication("mg1332001","chenquan");
		ea.sendMail();
	}
}
