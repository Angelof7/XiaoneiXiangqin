package com.xiangqin.service.impl;

import com.xiangqin.DAO.PersonalInfoDAO;
import com.xiangqin.DAO.impl.PersonalInfoDAOImpl;
import com.xiangqin.ORM.PersonalInfo;
import com.xiangqin.service.PersonalInfoService;

public class PersonalInfoServiceImpl implements PersonalInfoService{
	
	@Override
	public PersonalInfo getPersonalInfoByUserId(String userId) {
		PersonalInfoDAO diDAO = new PersonalInfoDAOImpl();
		PersonalInfo di = diDAO.getPersonalInfoByUserId(userId);
		return di;
	}

}
