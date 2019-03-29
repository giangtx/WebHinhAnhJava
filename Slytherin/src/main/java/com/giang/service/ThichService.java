package com.giang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.giang.dao.ThichDAO;
import com.giang.entity.Thich;
import com.giang.imp.Thichimp;

@Service
public class ThichService implements Thichimp {
	
	@Autowired
	ThichDAO thichDao;
	
	public Thich LayTrangThaiThichAnhCuaNguoiDung(int maHinhAnh, int maTaiKhoan){
		Thich thich=thichDao.LayTrangThaiThichAnhCuaNguoiDung(maHinhAnh, maTaiKhoan);
		return thich;
	}
	public boolean XuLyThich(Thich thich){
		boolean xulythich=thichDao.XuLyThich(thich);
		return xulythich;
	}
	public void XuLyBoThich(Thich thich){
		thichDao.XuLyBoThich(thich);
	}
}
