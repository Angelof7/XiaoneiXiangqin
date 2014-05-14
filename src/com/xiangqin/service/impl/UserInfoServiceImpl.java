package com.xiangqin.service.impl;


import com.xiangqin.DAO.UserInfoDAO;
import com.xiangqin.DAO.impl.UserInfoDAOImpl;
import com.xiangqin.ORM.UserInfo;
import com.xiangqin.service.UserInfoService;

public class UserInfoServiceImpl implements UserInfoService {

	@Override
	public void saveUserInfo(UserInfo userinfo) {
		// TODO Auto-generated method stub
		UserInfoDAO userinfoDAO = new UserInfoDAOImpl();
		userinfoDAO.saveUserInfo(userinfo);
	}
	
}
