package com.xiangqin.DAO;

import java.util.List;

import com.xiangqin.ORM.PhotoAlbum;

public interface PhotoAlbumDAO {
	
	public List<PhotoAlbum> getPhotoAlbum(String userId);
	public void updateFriend(PhotoAlbum PhotoAlbum);
	public void insertFriend(PhotoAlbum PhotoAlbum);
}
