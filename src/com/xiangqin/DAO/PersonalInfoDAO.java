package com.xiangqin.DAO;

import com.xiangqin.ORM.PersonalInfo;

/**
 * 
 * @author TianTian
 *
 */
public interface PersonalInfoDAO {
	public PersonalInfo getPersonalInfoByUserId(String userId);
	public int updatetPersonalInfo(PersonalInfo pi);
	public void savetPersonalInfo(PersonalInfo pi);
}
