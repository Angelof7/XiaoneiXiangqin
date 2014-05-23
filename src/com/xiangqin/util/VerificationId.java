package com.xiangqin.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Calendar;

public class VerificationId {
    private String studentId;
    private String studentAcademy="";//学生学院信息
    private String studentLevel="";//学生属于研究生，还是博士生,不知道
    private static int timeLimited=10;//学生在系统保留时间
    private String message;
    public VerificationId(String studentId){
    	this.setStudentId(studentId);
    }
    public boolean verificationId() throws IOException{
    	String studentNumber=this.studentId;//学号
    	String studentN = studentNumber.substring(0,2).toUpperCase();//学生年级
    	String studentYear = studentNumber.substring(2,4);
    	String studentAcad = studentNumber.substring(4,6);
    	Calendar cal = Calendar.getInstance();
    	int currentYear = cal.get(Calendar.YEAR);//对2000取
    	System.out.println("studentN===="+studentN);
    	if(studentN.equals("MG")||studentN.equals("MF")||studentN.equals("MP")||studentN.equals("DG")){
    	    set2StudentLevel(studentN);
    	    studentYear = (currentYear/1000*1000)+Integer.parseInt(studentYear)+"";
    	    int tempYear = Integer.parseInt(studentYear);
    	    System.out.println(currentYear + " " + tempYear);
    	    if(tempYear-currentYear<=timeLimited){    
    	    	set2StudentAcademy(studentAcad);
    	    	return true;
    	    }else{
    	    	this.setMessage("您的学号已经超出本网站允许的时间范围，谢谢！");
    	    	return false;
    	    }
    	}
    	System.out.println("学号不允许");
    	this.setMessage("输入的学号不为本校所允许!请确认后，重试");
    	return false;
    }
    /*****
     * 设置学生所处的年级
     * @param level
     */
    public void set2StudentLevel(String level){
    	if(level.equals("MG") || level.equals("MP") || level.equals("MF")){
    		this.setStudentLevel("研究生");
    	}else if(level.equals("DG")){
    		this.setStudentLevel("博士生");
    	}else{
    		this.setStudentLevel("不知道");
    	}
    }
    public void set2StudentAcademy(String studentAcad) throws IOException{
    	InputStream file = VerificationId.class.getResourceAsStream("academy.txt");  	
    	String line;
    	String []str;
    	BufferedReader br = new BufferedReader(new InputStreamReader(file));//参数为reader
    	
    	while((line = br.readLine())!=null){
    		str = line.split(" ");
    		if(str[0].equals(studentAcad)){
    			this.setStudentAcademy(str[1]);
    			break;
    		}
    	}
    }
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getStudentAcademy() {
		return studentAcademy;
	}
	public void setStudentAcademy(String studentAcademy) {
		this.studentAcademy = studentAcademy;
	}
	public String getStudentLevel() {
		return studentLevel;
	}
	public void setStudentLevel(String studentLevel) {
		this.studentLevel = studentLevel;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}
