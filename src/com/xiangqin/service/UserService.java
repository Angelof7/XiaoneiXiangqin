package com.xiangqin.service;

import com.xiangqin.ORM.User;

public interface UserService {
	public void saveUser(User user);

	public User showUser(String id);

}
