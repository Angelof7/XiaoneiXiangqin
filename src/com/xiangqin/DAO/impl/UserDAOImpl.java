package com.xiangqin.DAO.impl;

import org.hibernate.Transaction;

import com.xiangqin.DAO.UserDAO;
import com.xiangqin.ORM.User;
import com.xiangqin.util.HibernateUtil;

public class UserDAOImpl implements UserDAO {

	@Override
	public void saveUser(User user) {
		// 开启session,与HttpSession完全没有任何关系，相当于一个数据库连接对象
		org.hibernate.Session session = HibernateUtil.openSession();
		Transaction tx = session.beginTransaction();
		// 开启事务
		try {
			// 插入
			session.save(user);
			tx.commit();
		} catch (Exception ex) {
			if (null != tx) {
				tx.rollback();
				// 失败回滚
			}

		} finally {
			// 关闭session
			HibernateUtil.close(session);
		}

	}

	@Override
	public User getUser(String id) {
		// TODO Auto-generated method stub
		org.hibernate.Session session = HibernateUtil.openSession();
		// get方法取出对象
		User user = (User) session.get(User.class, id);
		return user;
	}

	@Override
	public void updateUser(User user) {
		// 开启session,与HttpSession完全没有任何关系，相当于一个数据库连接对象
		org.hibernate.Session session = HibernateUtil.openSession();
		Transaction tx = session.beginTransaction();
		// 开启事务
		try {
			// update
			session.update(user);
			tx.commit();
		} catch (Exception ex) {
			if (null != tx) {
				tx.rollback();
				// 失败回滚
			}

		} finally {
			// 关闭session
			HibernateUtil.close(session);
		}
	}

}
