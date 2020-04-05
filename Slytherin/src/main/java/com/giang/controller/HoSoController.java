package com.giang.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.giang.entity.BoSuuTap;
import com.giang.entity.HinhAnh;
import com.giang.entity.TaiKhoan;
import com.giang.service.HinhAnhService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Controller
@RequestMapping("hoso")
public class HoSoController {
	@Autowired  
	ServletContext context; 
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
	
	@Autowired
	ServletContext servletContext;
	
	@PostMapping(value="/xulytaianh",produces = "text/plain;charset=UTF-8")
	@ResponseBody
	@Transactional
	public String XuLyTaiAnh(@RequestParam("file") MultipartFile file,@RequestParam("coll") int coll, @RequestParam("description") String description, @RequestParam("sizefile") String sizefile, ModelMap modelMap,HttpSession httpSession,ServletRequest re)throws Exception {
		if(!file.isEmpty()){
			if(httpSession.getAttribute("user")!=null){
				TaiKhoan taikhoan=(TaiKhoan) httpSession.getAttribute("user");
				String fileName = file.getOriginalFilename();
				BoSuuTap bosuutap= new BoSuuTap();
				bosuutap.setMaBoSuuTap(coll);
				HinhAnh hinhanh=new HinhAnh();
				hinhanh.setTenHinhAnh(fileName);
				hinhanh.setMoTaHinhAnh(description);
				hinhanh.setKichCo(sizefile+"KB");
				hinhanh.setBosuutap(bosuutap);
				hinhanh.setTaikhoan(taikhoan);
				hinhanh.setPheDuyet(0);
				boolean kt=hinhanhService.ThemHinhAnh(hinhanh);
				String path=servletContext.getRealPath("/resources/image/background/");
				if(kt){
					file.transferTo(new File(path, fileName)); 
					return "thanhcong";
				}else
					return "thatbai";
			}else
				return "chuadangnhap";
		}
		else
			return "thatbai";
	}
	
	
	@RequestMapping("/duyetanh")
	@Transactional
	public String DuyetAnh(ModelMap modelMap){
		List<HinhAnh> hinhanh=hinhanhService.LayAnhChuaDuocPheDuyet();
		modelMap.addAttribute("hinhanhpd",hinhanh);
		return "duyetanh";
	}
}
