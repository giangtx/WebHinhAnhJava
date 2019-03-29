package com.giang.imp;

import java.util.List;

import com.giang.entity.BinhLuan;

public interface BinhLuanimp {
	public List<BinhLuan> LayDanhSachBinhLuan(int ma);
	public boolean XuLyBinhLuan(BinhLuan binhluan);
}
