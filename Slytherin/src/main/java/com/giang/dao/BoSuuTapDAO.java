package com.giang.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.giang.imp.BoSuuTapDAOimp;
import com.giang.entity.BoSuuTap;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class BoSuuTapDAO implements BoSuuTapDAOimp{
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public List<BoSuuTap> LayDanhSachBoSuuTap(int ma){
		Session session=sessionFactory.getCurrentSession();
		List<BoSuuTap> bosuutap=(List<BoSuuTap>)session.createQuery("from bosuutap").setFirstResult(ma).setMaxResults(6).getResultList();
		return bosuutap;
	}
	@Transactional
	public List<BoSuuTap> LayTenBoSuuTap(){
		Session session=sessionFactory.getCurrentSession();
		List<BoSuuTap> bosuutap=(List<BoSuuTap>)session.createQuery("from bosuutap").getResultList();
		return bosuutap;
	}
	
	
}
