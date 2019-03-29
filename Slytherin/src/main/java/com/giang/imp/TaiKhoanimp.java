package com.giang.imp;

import com.giang.entity.TaiKhoan;

public interface TaiKhoanimp {
	public boolean XuLyDangNhap(String tendangnhap,String MatKhau);
	public TaiKhoan LayTaiKhoan(String tendangnhap);
	public boolean XuLyDangKy(TaiKhoan taikhoan);
}
