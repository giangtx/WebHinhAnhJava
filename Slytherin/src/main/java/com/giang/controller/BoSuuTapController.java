package com.giang.controller;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.giang.entity.BoSuuTap;
import com.giang.entity.HinhAnh;
import com.giang.service.BoSuuTapService;
import com.giang.service.HinhAnhService;

@Controller
@RequestMapping("bosuutap")
public class BoSuuTapController {
	@Autowired
	HinhAnhService hinhanhService;
	
	@Autowired
	BoSuuTapService bosuutapService;
	
	@GetMapping
	@Transactional
	public String BoSuutapMacDinh(ModelMap modelMap){
		List<HinhAnh> dshinhanh=hinhanhService.LayDanhSachTatCaHinhAnh();
		List<BoSuuTap> dsbosuutap=bosuutapService.LayTenBoSuuTap();
		modelMap.addAttribute("dshinhanh",dshinhanh);
		modelMap.addAttribute("dsbosuutap", dsbosuutap);
		return "bosuutap";
	}
	
	@GetMapping("/{mabosuutap}")
	@Transactional
	public String HienThiBoSuuTapTheoTen(@PathVariable int mabosuutap, ModelMap modelMap){
		List<HinhAnh> dshinhanh=hinhanhService.LayDanhSachHinhAnhTheoBoSuuTap(mabosuutap);
		List<BoSuuTap> dsbosuutap=bosuutapService.LayTenBoSuuTap();
		modelMap.addAttribute("dshinhanh", dshinhanh);
		modelMap.addAttribute("dsbosuutap", dsbosuutap);
		modelMap.addAttribute("mabosuutap",mabosuutap);
		return "bosuutap";
	}

}
