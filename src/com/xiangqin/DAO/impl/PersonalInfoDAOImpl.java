package com.xiangqin.DAO.impl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.xiangqin.DAO.PersonalInfoDAO;
import com.xiangqin.ORM.PersonalInfo;
import com.xiangqin.util.HibernateUtil;

public class PersonalInfoDAOImpl implements PersonalInfoDAO{

	@Override
	public PersonalInfo getPersonalInfoByUserId(String userId) {
		Session session = HibernateUtil.openSession();
		Criteria criteria = session.createCriteria(PersonalInfo.class);
		criteria.add(Restrictions.eq("userId", userId));
		PersonalInfo di = (PersonalInfo) criteria.uniqueResult();
		return di;
	}

	@Override
	public int updateDetailInfo(PersonalInfo di) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void saveDetailInfo(PersonalInfo di) {
		// TODO Auto-generated method stub
		
	}
	
}
