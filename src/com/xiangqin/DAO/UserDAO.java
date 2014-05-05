package com.xiangqin.DAO;

import com.xiangqin.ORM.User;

public interface UserDAO {
	public void saveUser(User user);

	public User showUser(String id);
}
