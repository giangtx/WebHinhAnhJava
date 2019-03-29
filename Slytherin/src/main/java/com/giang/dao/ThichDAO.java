package com.giang.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.giang.entity.Thich;
import com.giang.imp.Thichimp;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class ThichDAO implements Thichimp{
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public Thich LayTrangThaiThichAnhCuaNguoiDung(int maHinhAnh, int maTaiKhoan){
		Session session=sessionFactory.getCurrentSession();
		try{
			Thich thich=(Thich)session.createQuery("from thich where MaHinhAnh="+maHinhAnh+" and MaTaiKhoan="+maTaiKhoan).getSingleResult();
			if(thich!=null)
				return thich;
			else
				return null;
		}catch(Exception e){
			return null;
		}
		
	}
	@Transactional
	public boolean XuLyThich(Thich thich){
		Session session= sessionFactory.getCurrentSession();
		int mathich=(Integer) session.save(thich);
		if(mathich>1){
			return true;
		}else return false;
	}
	@Transactional
	public void XuLyBoThich(Thich thich){
		Session session= sessionFactory.getCurrentSession();
		session.delete(thich);
	}
}
