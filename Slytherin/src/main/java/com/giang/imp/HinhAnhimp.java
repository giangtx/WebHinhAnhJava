package com.giang.imp;

import java.util.List;

import com.giang.entity.HinhAnh;

public interface HinhAnhimp {
	public List<HinhAnh> LayDanhSachHinhAnhTrangChu();
	public List<HinhAnh> LayDanhSachTatCaHinhAnh();
	public List<HinhAnh> LayDanhSachHinhAnhTheoBoSuuTap(int ma);
	public HinhAnh LayHinhAnhTheoTen(String tenhinhanh);
	public List<HinhAnh> LayAnhCungChuDe(int mabosuutap);
	public List<HinhAnh> LayAnhTaiTro();
	public List<HinhAnh> LayAnhChuaDuocPheDuyet();
	public List<HinhAnh> LayDanhSachAnhTheoMaTaiKhoan(int maTaiKhoan);
	public List<HinhAnh> LayDanhSachAnhChuaDuocDuyetTheoMaTaiKhoan(int maTaiKhoan);
}
