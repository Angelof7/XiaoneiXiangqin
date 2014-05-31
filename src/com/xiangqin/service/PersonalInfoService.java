package com.xiangqin.service;

import com.xiangqin.ORM.PersonalInfo;

public interface PersonalInfoService {
	public PersonalInfo getPersonalInfoByUserId(String userId);
	public void savePersonalInfo(PersonalInfo pi);
}
