package com.giang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.giang.dao.BoSuuTapDAO;
import com.giang.entity.BoSuuTap;
import com.giang.imp.BoSuuTapDAOimp;

@Service
public class BoSuuTapService implements BoSuuTapDAOimp {
	@Autowired
	BoSuuTapDAO bosuutapDao;
	
	public List<BoSuuTap> LayDanhSachBoSuuTap(int ma){
		List<BoSuuTap> bosuutap=bosuutapDao.LayDanhSachBoSuuTap(ma);
		return bosuutap;
	}
	public List<BoSuuTap> LayTenBoSuuTap(){
		List<BoSuuTap> bosuutap=bosuutapDao.LayTenBoSuuTap();
		return bosuutap;
	}
	
}
