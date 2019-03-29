package com.giang.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.giang.entity.BinhLuan;
import com.giang.imp.BinhLuanimp;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class BinhLuanDAO implements BinhLuanimp{
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public List<BinhLuan> LayDanhSachBinhLuan(int ma){
		Session session=sessionFactory.getCurrentSession();
		List<BinhLuan> binhluan=(List<BinhLuan>)session.createQuery("from binhluan where MaHinhAnh="+ma).getResultList();
		return binhluan;
	}
	@Transactional
	public boolean XuLyBinhLuan(BinhLuan binhluan){
		Session session=sessionFactory.getCurrentSession();
		int mabinhluan=(Integer)session.save(binhluan);
		if(mabinhluan>0){
			return true;
		}else
			return false;
		
	}
}
