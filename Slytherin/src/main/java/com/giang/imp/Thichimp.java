package com.giang.imp;

import java.util.List;

import com.giang.entity.Thich;

public interface Thichimp {
	public Thich LayTrangThaiThichAnhCuaNguoiDung(int maHinhAnh, int maTaiKhoan);
	public List<Thich> LayTrangThaiThichCacAnhCuaNguoiDung( int maTaiKhoan);
	public int DemLuotThich(int maHinhAnh);
	public boolean XuLyThich(Thich thich);
	public void XuLyBoThich(Thich thich);
}
