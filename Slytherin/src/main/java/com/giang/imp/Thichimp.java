package com.giang.imp;

import com.giang.entity.Thich;

public interface Thichimp {
	public Thich LayTrangThaiThichAnhCuaNguoiDung(int maHinhAnh, int maTaiKhoan);
	public boolean XuLyThich(Thich thich);
	public void XuLyBoThich(Thich thich);
}
