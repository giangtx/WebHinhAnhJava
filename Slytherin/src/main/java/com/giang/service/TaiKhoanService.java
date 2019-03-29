package com.giang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.giang.dao.TaiKhoanDAO;
import com.giang.entity.TaiKhoan;
import com.giang.imp.TaiKhoanimp;
@Service
public class TaiKhoanService implements TaiKhoanimp{
	
	@Autowired
	TaiKhoanDAO taikhoanDao;
	public boolean XuLyDangNhap(String tendangnhap, String matkhau){
		boolean kiemtra=taikhoanDao.XuLyDangNhap(tendangnhap, matkhau);
		return kiemtra;
	}
	public TaiKhoan LayTaiKhoan(String tendangnhap) {
		TaiKhoan taikhoan=taikhoanDao.LayTaiKhoan(tendangnhap);
		return taikhoan;
	}
	public boolean XuLyDangKy(TaiKhoan taikhoan){
		boolean ktdk=taikhoanDao.XuLyDangKy(taikhoan);
		return ktdk;
	}
}
