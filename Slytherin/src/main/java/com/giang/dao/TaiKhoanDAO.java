package com.giang.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.giang.entity.TaiKhoan;
import com.giang.imp.TaiKhoanimp;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class TaiKhoanDAO implements TaiKhoanimp{
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public boolean XuLyDangNhap(String tendangnhap, String matKhau){
		Session session=sessionFactory.getCurrentSession();
		try{
			TaiKhoan taikhoan= (TaiKhoan)session.createQuery("from taikhoan where TenDangNhap='"+tendangnhap+"'and MatKhau='"+matKhau+"'").getSingleResult();
			if (taikhoan!= null) {
				return true;
			}else
				return false;
		}catch(Exception e){
			return false;
		}
	}
	@Transactional
	public TaiKhoan LayTaiKhoan(String tendangnhap) {
		Session session=sessionFactory.getCurrentSession();
		try {
			TaiKhoan taikhoan=(TaiKhoan)session.createQuery("from taikhoan where TenDangNhap='"+tendangnhap+"'").getSingleResult();
			if (taikhoan!=null) {
				return taikhoan;
			}else
				return null;
		} catch (Exception e) {
			return null;
		}
		
	}
	@Transactional
	public boolean XuLyDangKy(TaiKhoan taikhoan){
		Session session=sessionFactory.getCurrentSession();
		int ma=(Integer) session.save(taikhoan);
		if(ma>1){
			return true;
		}else
			return false;
	}
}
