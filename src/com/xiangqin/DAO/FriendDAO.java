package com.xiangqin.DAO;

import java.util.List;

import com.xiangqin.ORM.Friend;

public interface FriendDAO {
	
	List<Friend> getFriend(String userId);
	
	void insertFriend(Friend friend);
}
