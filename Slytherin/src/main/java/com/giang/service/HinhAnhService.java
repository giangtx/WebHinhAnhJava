package com.giang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.giang.dao.HinhAnhDAO;
import com.giang.entity.HinhAnh;
import com.giang.imp.HinhAnhimp;

@Service
public class HinhAnhService implements HinhAnhimp{
	
	@Autowired
	HinhAnhDAO hinhAnhDAO;
	
	public List<HinhAnh> LayDanhSachHinhAnhTrangChu(){
		List<HinhAnh> hinhanh=hinhAnhDAO.LayDanhSachHinhAnhTrangChu();
		return hinhanh;
	}
	
	public List<HinhAnh> LayDanhSachTatCaHinhAnh(){
		List<HinhAnh> dshinhanh=hinhAnhDAO.LayDanhSachTatCaHinhAnh();
		return dshinhanh;
	}
	public List<HinhAnh> LayDanhSachHinhAnhTheoBoSuuTap(int ma){
		List<HinhAnh> dsHinhAnhs=hinhAnhDAO.LayDanhSachHinhAnhTheoBoSuuTap(ma);
		return dsHinhAnhs;
	}
	public HinhAnh LayHinhAnhTheoTen(String tenhinhanh){
		HinhAnh hinhanh=hinhAnhDAO.LayHinhAnhTheoTen(tenhinhanh);
		return hinhanh;
	}
	public List<HinhAnh> LayAnhCungChuDe(int mabosuutap){
		List<HinhAnh> anh= hinhAnhDAO.LayAnhCungChuDe(mabosuutap);
		return anh;
	}
	public List<HinhAnh> LayAnhTaiTro(){
		List<HinhAnh> anhtaitro=hinhAnhDAO.LayAnhTaiTro();
		return anhtaitro;
	}
	public List<HinhAnh> LayAnhChuaDuocPheDuyet(){
		List<HinhAnh> anh=hinhAnhDAO.LayAnhChuaDuocPheDuyet();
		return anh;
	}
	public List<HinhAnh> LayDanhSachAnhTheoMaTaiKhoan(int maTaiKhoan){
		List<HinhAnh> hinhanh=hinhAnhDAO.LayDanhSachAnhTheoMaTaiKhoan(maTaiKhoan);
		return hinhanh;
	}
	public List<HinhAnh> LayDanhSachAnhChuaDuocDuyetTheoMaTaiKhoan(int maTaiKhoan){
		List<HinhAnh> hinhanh=hinhAnhDAO.LayDanhSachAnhChuaDuocDuyetTheoMaTaiKhoan(maTaiKhoan);
		return hinhanh;
	}
	public List<HinhAnh> LayDanhSachHinhAnhForum(){
		List<HinhAnh> hinhanh=hinhAnhDAO.LayDanhSachHinhAnhForum();
		return hinhanh;
	}
	public boolean ThemHinhAnh(HinhAnh hinhanh){
		boolean kt=hinhAnhDAO.ThemHinhAnh(hinhanh);
		return kt;
	}
	
}
