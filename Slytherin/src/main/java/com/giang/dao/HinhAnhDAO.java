package com.giang.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.giang.entity.HinhAnh;
import com.giang.imp.HinhAnhimp;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class HinhAnhDAO implements HinhAnhimp{
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public List<HinhAnh> LayDanhSachHinhAnhTrangChu(){
		Session session=sessionFactory.getCurrentSession();
		List<HinhAnh> hinhanh=(List<HinhAnh>)session.createQuery("from hinhanh where PheDuyet=1 order by rand()").setFirstResult(0).setMaxResults(16).getResultList();
		return hinhanh;
	}
	@Transactional
	public List<HinhAnh> LayDanhSachTatCaHinhAnh(){
		Session session=sessionFactory.getCurrentSession();
		List<HinhAnh> dshinhanh=(List<HinhAnh>)session.createQuery("from hinhanh where PheDuyet=1").getResultList();
		return dshinhanh;
	}
	@Transactional
	public List<HinhAnh> LayDanhSachHinhAnhTheoBoSuuTap(int ma){
		Session session=sessionFactory.getCurrentSession();
		List<HinhAnh> dshinhanh=(List<HinhAnh>)session.createQuery("from hinhanh where PheDuyet=1 and MaBoSuuTap="+ma).getResultList();
		return dshinhanh;
	}
	@Transactional
	public HinhAnh LayHinhAnhTheoTen(String tenhinhanh){
		Session session=sessionFactory.getCurrentSession();
		String query="from hinhanh where TenHinhAnh ='"+tenhinhanh+"'";
		HinhAnh hinhanh=(HinhAnh) session.createQuery(query).getSingleResult();
		return hinhanh;
	}
	@Transactional
	public List<HinhAnh> LayAnhCungChuDe(int mabosuutap){
		Session session=sessionFactory.getCurrentSession();
		List<HinhAnh> anh=(List<HinhAnh>)session.createQuery("from hinhanh where PheDuyet=1 and MaBoSuuTap="+mabosuutap).setFirstResult(0).setMaxResults(6).getResultList();
		return anh;
	}
	@Transactional
	public List<HinhAnh> LayAnhTaiTro(){
		Session session=sessionFactory.getCurrentSession();
		List<HinhAnh> anhtaitro=(List<HinhAnh>)session.createQuery("from hinhanh where AnhTaiTro=1").setFirstResult(0).setMaxResults(6).getResultList();
		return anhtaitro;
	}
	@Transactional
	public List<HinhAnh> LayAnhChuaDuocPheDuyet(){
		Session session=sessionFactory.getCurrentSession();
		try{
			List<HinhAnh> hinhanh=(List<HinhAnh>)session.createQuery("from hinhanh where PheDuyet=0").getResultList();
			if(hinhanh!=null){
				return hinhanh;
			}else
				return null;
		}catch(Exception e){
			return null;
		}
	}
	@Transactional
	public List<HinhAnh> LayDanhSachAnhTheoMaTaiKhoan(int maTaiKhoan){
		Session session=sessionFactory.getCurrentSession();
		try {
			List<HinhAnh> hinhanh=(List<HinhAnh>)session.createQuery("from hinhanh where PheDuyet=1 and MaTaiKhoan="+maTaiKhoan).getResultList();
			if(hinhanh!=null){
				return hinhanh;
			}else{
				return null;
			}
		} catch (Exception e) {
			return null;
		}
	}
	public List<HinhAnh> LayDanhSachAnhChuaDuocDuyetTheoMaTaiKhoan(int maTaiKhoan){
		Session session=sessionFactory.getCurrentSession();
		try {
			List<HinhAnh> hinhanh=(List<HinhAnh>)session.createQuery("from hinhanh where PheDuyet=0 and MaTaiKhoan="+maTaiKhoan).getResultList();
			if(hinhanh!=null){
				return hinhanh;
			}else{
				return null;
			}
		} catch (Exception e) {
			return null;
		}
	}
}