package com.xiangqin.DAO;

import java.util.List;

import com.xiangqin.ORM.PersonalInfo;

/**
 * 
 * @author TianTian
 * 
 */
public interface PersonalInfoDAO {
	public PersonalInfo getPersonalInfoByUserId(String userId);

	public List<Object> searchUser(String province, String city, int age_min,
			int age_max);

	public void updatetPersonalInfo(PersonalInfo pi);

	public void savetPersonalInfo(PersonalInfo pi);
}
