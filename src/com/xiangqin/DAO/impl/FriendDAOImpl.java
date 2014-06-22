package com.xiangqin.DAO.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.Session;

import com.xiangqin.DAO.FriendDAO;
import com.xiangqin.ORM.Friend;
import com.xiangqin.util.HibernateUtil;

public class FriendDAOImpl implements FriendDAO {

	@SuppressWarnings("unchecked")
	@Override
	public List<Friend> getFriend(String userId) {
		String hql = "from Friend where userId=:userId";
		Session session = HibernateUtil.openSession();
		Query query = session.createQuery(hql);
		query.setString("userId", userId);
		List<Friend> friendList = query.list();
		HibernateUtil.close(session);
		return friendList;
	}

	@Override
	public void insertFriend(Friend friend) {
		Session session = HibernateUtil.openSession();
		Transaction sw = session.beginTransaction();
		try{
			session.save(friend);
			sw.commit();
		}catch(Exception e){
			sw.rollback();
		}
		HibernateUtil.close(session);
	}

}
