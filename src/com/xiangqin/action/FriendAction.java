package com.xiangqin.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xiangqin.ORM.Friend;
import com.xiangqin.ORM.User;
import com.xiangqin.service.FriendService;
import com.xiangqin.service.impl.FriendServiceImpl;

public class FriendAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	
	private List<Friend> friendList;
	
	public String addFriend(){
		HttpServletRequest req = ServletActionContext.getRequest();
		String targetUserId = (String)req.getAttribute("targetUsreId");
		User user = (User)ActionContext.getContext().getSession().get("user");
		String userId = user.getId();
		Friend friend = new Friend();
		friend.setUserId(userId);
		friend.setFriendId(targetUserId);
		FriendService service = new FriendServiceImpl(); 
		service.saveFriend(friend);
		return "SUCCESS";
	}

	public String getFriend(){
		User user = (User) ActionContext.getContext().getSession().get("user");
		FriendService service = new FriendServiceImpl();
		this.friendList = service.getFriend(user.getId());
		return "SUCCESS";
	}
	public List<Friend> getFriendList() {
		return friendList;
	}

	public void setFriendList(List<Friend> friendList) {
		this.friendList = friendList;
	}
}
