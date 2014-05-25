package com.xiangqin.DAO;

import com.xiangqin.ORM.DetailInfo;

/**
 * 
 * @author Tian
 *
 */
public interface DetailInfoDAO {
	public DetailInfo getDetailInfoByUserId(String userId);
	public int updateDetailInfo(DetailInfo di);
	public void saveDetailInfo(DetailInfo di);
}
