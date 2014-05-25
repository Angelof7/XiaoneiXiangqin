package com.xiangqin.service.impl;

import com.xiangqin.DAO.DetailInfoDAO;
import com.xiangqin.DAO.impl.DetailInfoDAOImpl;
import com.xiangqin.ORM.DetailInfo;
import com.xiangqin.service.DetailInfoService;

public class DetailInfoServiceImpl implements DetailInfoService{
	
	@Override
	public DetailInfo getDetailInfoByUserId(String userId) {
		DetailInfoDAO diDAO = new DetailInfoDAOImpl();
		DetailInfo di = diDAO.getDetailInfoByUserId(userId);
		return di;
	}

}
