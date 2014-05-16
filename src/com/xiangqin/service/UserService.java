package com.xiangqin.service;

import com.xiangqin.ORM.User;

public interface UserService {
	public void saveUser(User user);
	
	public void updateUser(User user);

	public User getUser(String id);

}
