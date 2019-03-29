package com.giang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.giang.entity.BoSuuTap;
import com.giang.entity.HinhAnh;
import com.giang.service.BoSuuTapService;
import com.giang.service.HinhAnhService;


@Controller
@RequestMapping("/")
public class TrangChuController {
	
	@Autowired
	BoSuuTapService bosuutapService;
	
	@Autowired
	HinhAnhService hinhanhService;
	
	@GetMapping
	@Transactional
	public String TrangChu(ModelMap modelMap){
		List<BoSuuTap> bosuutap=bosuutapService.LayDanhSachBoSuuTap(0);
		List<HinhAnh> hinhAnhs=hinhanhService.LayDanhSachHinhAnhTrangChu();
		modelMap.addAttribute("bosuutap",bosuutap);
		modelMap.addAttribute("hinhanh",hinhAnhs);
		
		return "trangchu";
	}
}
