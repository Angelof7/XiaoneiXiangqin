package com.xiangqin.util;


import java.util.Date;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailAuthentication {
    private String email;
    private String userId;
    private String createPassword;
    public String adminEmail="chenspring2";//我们的邮箱
    public String adminPassword = "chenquan901022";//我们的邮箱密码
    public String url = "http://localhost:8081/Xiangqin/login.jsp";//用户访问我们网站的网址
    private Properties props;
    public EmailAuthentication(String userId,String iEmail){
    	setEmail(iEmail);
    	setUserId(userId);
    	this.setProps();
    }
    public boolean sendMail() throws MessagingException{
        this.createPassword = org.apache.commons.lang.RandomStringUtils.random(6, true, true);//生成的用户密码
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
    public boolean send2Email() throws MessagingException{
    	this.createPassword = org.apache.commons.lang.RandomStringUtils.random(6, true, true);//生成的用户密码
        Authenticator authenticator = new MyAuthenticator(adminEmail, adminPassword);   
        javax.mail.Session session = javax.mail.Session.getDefaultInstance(props,authenticator);  
        session.setDebug(true);   
        Address from = new InternetAddress(adminEmail);  
        Address to = new InternetAddress(email);    
        MimeMessage msg = new MimeMessage(session);  
        msg.setFrom(from);  
        msg.setSubject("南大相亲网站找回密码,测试用");  
        msg.setSentDate(new Date());  
        msg.setContent("<h3>欢迎注册南大相亲网</h3><p>你的用户名为:"+this.userId+"</p><p>你的密码为:"+createPassword+"</p><a href='" + url + "'>点击" + url + "重新登录</a>", 
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
	public Properties getProps() {
		return props;
	}
	public void setProps() {
    	props = new Properties();  
        props.setProperty("mail.smtp.host", "smtp.gmail.com");  
        props.setProperty("mail.smtp.auth", "true");   
        props.setProperty("mail.port", "587"); 
        props.put("mail.smtp.starttls.enable", "true");
	}
}
