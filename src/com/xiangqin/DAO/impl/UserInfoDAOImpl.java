package com.xiangqin.DAO.impl;


import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;


import com.xiangqin.DAO.UserInfoDAO;
import com.xiangqin.ORM.UserInfo;


public class UserInfoDAOImpl implements UserInfoDAO {
	public void saveUserInfo(UserInfo userinfo){
		Configuration cfg = new Configuration().configure();
		SessionFactory factory = cfg.buildSessionFactory();
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(userinfo);
		tx.commit();
		session.close();
		factory.close();
	}
}
