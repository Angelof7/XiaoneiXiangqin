package com.xiangqin.service.impl;

import com.xiangqin.DAO.PersonalInfoDAO;
import com.xiangqin.DAO.impl.PersonalInfoDAOImpl;
import com.xiangqin.ORM.PersonalInfo;
import com.xiangqin.service.PersonalInfoService;

public class PersonalInfoServiceImpl implements PersonalInfoService{
	
	@Override
	public PersonalInfo getPersonalInfoByUserId(String userId) {
		PersonalInfoDAO dao = new PersonalInfoDAOImpl();
		PersonalInfo pi = dao.getPersonalInfoByUserId(userId);
		return pi;
	}

	@Override
	public void updatePersonalInfo(PersonalInfo pi) {
		PersonalInfoDAO dao = new PersonalInfoDAOImpl();
		dao.updatetPersonalInfo(pi);
	}

	
	@Override
	public void savePersonalInfo(PersonalInfo pi) {
		PersonalInfoDAO dao = new PersonalInfoDAOImpl();
		dao.savetPersonalInfo(pi);
	}

	
}
