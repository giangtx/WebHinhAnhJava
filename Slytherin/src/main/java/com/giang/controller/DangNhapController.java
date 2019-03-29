package com.giang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.giang.entity.TaiKhoan;
import com.giang.service.TaiKhoanService;

@Controller
@RequestMapping("dangnhap")
@SessionAttributes("user")
public class DangNhapController {
	
	@Autowired
	TaiKhoanService taikhoanService;
	
	@GetMapping
	public String DangNhap(){
		return "dangnhap";
	}
	
	@PostMapping("xulydangnhap")
	@ResponseBody
	@Transactional
	public String XuLyDangNhap(@RequestParam String username, @RequestParam String password,ModelMap modelMap){
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		TaiKhoan taiKhoan=taikhoanService.LayTaiKhoan(username);
		if(taiKhoan!=null){
			if(passwordEncoder.matches(password, taiKhoan.getMatKhau())){
				if (taiKhoan.getActive()==1) {
					modelMap.addAttribute("user",taiKhoan);
					return "thanhcong";
				}else{
					return "xacthuc";
				}
			}else{
				return "saimk";
			}
			
		}else
			return "thatbai";
	}
	
	@GetMapping("/dangxuat")
	public String DangXuat(SessionStatus status){
		status.setComplete();
		return "redirect:/";
	}
}
