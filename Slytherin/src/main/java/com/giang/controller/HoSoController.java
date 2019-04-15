package com.giang.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.giang.entity.HinhAnh;
import com.giang.entity.TaiKhoan;
import com.giang.service.HinhAnhService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Controller
@RequestMapping("hoso")
public class HoSoController {
	
	@Autowired
	HinhAnhService hinhanhService;
	
	@GetMapping
	public String HoSo(){
		return "hoso";
	}
	@RequestMapping("/anhcuatoi")
	@Transactional
	public String AnhCuaToi(ModelMap modelMap,HttpSession httpSession){
		if(httpSession.getAttribute("user")!=null){
			TaiKhoan taikhoan=(TaiKhoan) httpSession.getAttribute("user");
			List<HinhAnh> anhcuatoi=hinhanhService.LayDanhSachAnhTheoMaTaiKhoan(taikhoan.getMaTaiKhoan());
			List<HinhAnh> anhcuatoichuaduyet=hinhanhService.LayDanhSachAnhChuaDuocDuyetTheoMaTaiKhoan(taikhoan.getMaTaiKhoan());
			modelMap.addAttribute("anhcuatoi", anhcuatoi);
			modelMap.addAttribute("anhchuaduyet",anhcuatoichuaduyet);
		}
		return "anhcuatoi";
	}
	@RequestMapping("/taianh")
	public String TaiAnh(){
		return "taianh";
	}
	@RequestMapping("/duyetanh")
	@Transactional
	public String DuyetAnh(ModelMap modelMap){
		List<HinhAnh> hinhanh=hinhanhService.LayAnhChuaDuocPheDuyet();
		modelMap.addAttribute("hinhanhpd",hinhanh);
		return "duyetanh";
	}
}
