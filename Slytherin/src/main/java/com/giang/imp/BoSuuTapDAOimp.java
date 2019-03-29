package com.giang.imp;


import java.util.List;
import com.giang.entity.BoSuuTap;

public interface BoSuuTapDAOimp {
	public List<BoSuuTap> LayDanhSachBoSuuTap(int ma);
	public List<BoSuuTap> LayTenBoSuuTap();
}
