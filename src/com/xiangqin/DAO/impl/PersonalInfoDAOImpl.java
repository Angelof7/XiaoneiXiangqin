package com.xiangqin.DAO.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.xiangqin.DAO.PersonalInfoDAO;
import com.xiangqin.ORM.PersonalInfo;
import com.xiangqin.util.HibernateUtil;

public class PersonalInfoDAOImpl implements PersonalInfoDAO {

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
	public void updatetPersonalInfo(PersonalInfo pi) {
		Session session = HibernateUtil.openSession();
		Transaction sw = session.beginTransaction();
		try {
			session.update(pi);
			sw.commit();
		} catch (Exception e) {
			sw.rollback();
		}
		HibernateUtil.close(session);
	}

	@Override
	public void savetPersonalInfo(PersonalInfo pi) {
		Session session = HibernateUtil.openSession();
		Transaction sw = session.beginTransaction();
		try {
			session.save(pi);
			sw.commit();
		} catch (HibernateException e) {
			sw.rollback();
		}
		HibernateUtil.close(session);
	}

	@Override
	public List<Object> searchUser(String province, String city, int age_min,
			int age_max) {
		Session session = HibernateUtil.openSession();
		if (!province.equals("0")) {
			if (!city.equals("0")) {// 指定了省份和城市
				@SuppressWarnings("unchecked")
				List<Object> pis = session
						.createSQLQuery(
								"select Nickname, UserId, Age, LiveLocation from PersonalInfo pi where pi.liveLocation=? and pi.age>=? and pi.age<=?")
						.setParameter(0, city).setParameter(1, age_min)
						.setParameter(2, age_max).list();
				HibernateUtil.close(session);
				return pis;
			} else {// 只指定了省份
				@SuppressWarnings("unchecked")
				List<Object> pis = session
						.createSQLQuery(
								"select Nickname, UserId, Age, LiveLocation from PersonalInfo pi where pi.province=? and pi.age>=? and pi.age<=?")
						.setParameter(0, province).setParameter(1, age_min)
						.setParameter(2, age_max).list();
				HibernateUtil.close(session);
				return pis;
			}
		} else {// 不限省份
			@SuppressWarnings("unchecked")
			List<Object> pis = session
					.createSQLQuery(
							"select Nickname, UserId, Age, LiveLocation from PersonalInfo pi where pi.age>=? and pi.age<=?")
					.setParameter(0, age_min).setParameter(1, age_max).list();
			HibernateUtil.close(session);
			return pis;
		}

	}
}
