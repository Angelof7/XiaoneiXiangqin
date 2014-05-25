package com.xiangqin.DAO.impl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.xiangqin.DAO.DetailInfoDAO;
import com.xiangqin.ORM.DetailInfo;
import com.xiangqin.util.HibernateUtil;

public class DetailInfoDAOImpl implements DetailInfoDAO{

	@Override
	public DetailInfo getDetailInfoByUserId(String userId) {
		Session session = HibernateUtil.openSession();
		Criteria criteria = session.createCriteria(DetailInfo.class);
		criteria.add(Restrictions.eq("userId", userId));
		DetailInfo di = (DetailInfo) criteria.uniqueResult();
		return di;
	}

	@Override
	public int updateDetailInfo(DetailInfo di) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void saveDetailInfo(DetailInfo di) {
		// TODO Auto-generated method stub
		
	}
	
}
