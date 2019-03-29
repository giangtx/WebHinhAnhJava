package com.giang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.giang.dao.BinhLuanDAO;
import com.giang.entity.BinhLuan;
import com.giang.imp.BinhLuanimp;

@Service
public class BinhLuanService implements BinhLuanimp {
	
	@Autowired
	BinhLuanDAO binhluanDao;
	
	public List<BinhLuan> LayDanhSachBinhLuan(int ma){
		List<BinhLuan> binhluan=binhluanDao.LayDanhSachBinhLuan(ma);
		return binhluan;
	}
	public boolean XuLyBinhLuan(BinhLuan binhluan){
		boolean xlbinhluan=binhluanDao.XuLyBinhLuan(binhluan);
		return xlbinhluan;
	}
}
