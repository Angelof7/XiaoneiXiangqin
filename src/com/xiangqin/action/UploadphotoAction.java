package com.xiangqin.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.xiangqin.DAO.impl.UserDAOImpl;
import com.xiangqin.ORM.User;
import com.xiangqin.util.EmailAuthentication;
import com.xiangqin.util.EncrypMD5;

public class UploadphotoAction {
	private File file; // 前台传过来的文件
	private String fileFileName; // 文件名
    private String fileContentType; // 文件类型
    private String photoabulm;
    public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
    public String upload() throws IOException{
    	System.out.println("fileFileName="+this.fileFileName);
        HttpServletResponse response = ServletActionContext.getResponse();
        HttpServletRequest request = ServletActionContext.getRequest();
        // 写到服务器上
        String photoname = request.getParameter("photoabulm");
        response.setCharacterEncoding("utf-8");
        try {
        String path = request.getServletContext().getRealPath("/photo");
        User user = (User)request.getSession().getAttribute("user");
        path +="/"+user.getId()+"/"+"我的相册"+"/";
        new File(path).mkdirs();
        System.out.println(path);
        FileInputStream in = new FileInputStream(file);
        FileOutputStream out = new FileOutputStream(new File(path + "/" + fileFileName));
        byte[] b = new byte[1024];
        while ((in.read(b) > -1)) {
                out.write(b);
        }
        in.close();
        out.close();
        file.delete();
        response.getWriter().write("上传成功！");
        }catch (Exception e) {
                e.printStackTrace();
                response.getWriter().write("上传失败!请联系管理员或者重新上传！");
       }
       return "success";
    }
	public String getFileContentType() {
		return fileContentType;
	}
	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}
	public String getPhotoabulm() {
		return photoabulm;
	}
	public void setPhotoabulm(String photoabulm) {
		this.photoabulm = photoabulm;
	}
}
