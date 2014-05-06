package com.xiangqin.service.impl;

import com.xiangqin.DAO.UserDAO;
import com.xiangqin.DAO.impl.UserDAOImpl;
import com.xiangqin.ORM.User;
import com.xiangqin.service.UserService;

public class UserServiceImpl implements UserService {

	@Override
	public void saveUser(User user) {
		UserDAO userDAO = new UserDAOImpl();
		userDAO.saveUser(user);
	}

	@Override
	public User getUser(String id) {
		UserDAO userDAO = new UserDAOImpl();
		User user = userDAO.getUser(id);
		return user;
	}

}
