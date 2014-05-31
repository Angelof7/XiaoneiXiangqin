package com.xiangqin.DAO.impl;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
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
		HibernateUtil.close(session);
		return di;
	}

	@Override
	public int updatetPersonalInfo(PersonalInfo pi) {
		
		return 0;
	}

	@Override
	public void savetPersonalInfo(PersonalInfo pi) {
		Session session = HibernateUtil.openSession();
		Transaction sw = session.beginTransaction();
		try{
			session.save(pi);
			sw.commit();
		}catch(HibernateException e){
			sw.rollback();
		}
		HibernateUtil.close(session);
	}

}
