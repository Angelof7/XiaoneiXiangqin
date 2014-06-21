package com.xiangqin.service;

import java.util.List;

import com.xiangqin.ORM.Friend;

public interface FriendService {
	public List<Friend> getFriend(String userId);
	public void saveFriend(Friend friend);
}
