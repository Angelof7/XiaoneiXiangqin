package com.xiangqin.service.impl;

import java.util.List;

import com.xiangqin.ORM.Friend;
import com.xiangqin.service.FriendService;
import com.xiangqin.DAO.FriendDAO;
import com.xiangqin.DAO.impl.FriendDAOImpl;

public class FriendServiceImpl implements FriendService{

	@Override
	public List<Friend> getFriend(String userId) {
		FriendDAO friendDAO = new FriendDAOImpl();
		List<Friend> friends = friendDAO.getFriend(userId);
		return friends;
	}

	@Override
	public void saveFriend(Friend friend) {
		FriendDAO friendDAO = new FriendDAOImpl();
		friendDAO.insertFriend(friend);
	}
	
}
