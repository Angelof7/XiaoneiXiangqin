package com.xiangqin.DAO.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.Session;

import com.xiangqin.DAO.FriendDAO;
import com.xiangqin.DAO.PhotoAlbumDAO;
import com.xiangqin.ORM.Friend;
import com.xiangqin.ORM.PhotoAlbum;
import com.xiangqin.util.HibernateUtil;

public class PhotoAlbumDAOImpl implements PhotoAlbumDAO {

	@SuppressWarnings("unchecked")
	@Override
	public List<PhotoAlbum> getPhotoAlbum(String userId) {
		String hql = "from PhotoAlbum where userId=:userId";
		Session session = HibernateUtil.openSession();
		Query query = session.createQuery(hql);
		query.setString("userId", userId);
		List<PhotoAlbum> photoList = query.list();
		HibernateUtil.close(session);
		return photoList;
	}

	@Override
	public void updateFriend(PhotoAlbum PhotoAlbum) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.openSession();
		Transaction sw = session.beginTransaction();
		try{
			session.update(PhotoAlbum);
			sw.commit();
		}catch(Exception e){
			sw.rollback();
		}
		HibernateUtil.close(session);
	}

	@Override
	public void insertFriend(PhotoAlbum PhotoAlbum) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.openSession();
		Transaction sw = session.beginTransaction();
		try{
			session.save(PhotoAlbum);
			sw.commit();
		}catch(Exception e){
			sw.rollback();
		}
		HibernateUtil.close(session);
	}

}
