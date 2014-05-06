package com.xiangqin.ORM;

public class User {
	private String id;
	private String username;
	private String password;
    private int firstlogin;
	public String getId() {
		return id;
	}

	public String getPassword() {
		return password;
	}

	public String getUsername() {
		return username;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getFirstlogin() {
		return firstlogin;
	}

	public void setFirstlogin(int firstlogin) {
		this.firstlogin = firstlogin;
	}
}
