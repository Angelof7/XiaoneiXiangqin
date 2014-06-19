package com.xiangqin.ORM;

public class PhotoAlbum {
    private String user_id;
    private String photo_name;
    private String create_time;
    private String photo_detail;
    private String photo_profile_src;
    public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPhoto_name() {
		return photo_name;
	}
	public void setPhoto_name(String photo_name) {
		this.photo_name = photo_name;
	}
	public String getCreate_time() {
		return create_time;
	}
	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}
	public String getPhoto_detail() {
		return photo_detail;
	}
	public void setPhoto_detail(String photo_detail) {
		this.photo_detail = photo_detail;
	}
	public String getPhoto_profile_src() {
		return photo_profile_src;
	}
	public void setPhoto_profile_src(String photo_profile_src) {
		this.photo_profile_src = photo_profile_src;
	}
	public int getIs_visible() {
		return is_visible;
	}
	public void setIs_visible(int is_visible) {
		this.is_visible = is_visible;
	}
	private int is_visible;//1为好友可见，0为好友不可见
}
