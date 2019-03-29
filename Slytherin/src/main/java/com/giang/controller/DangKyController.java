package com.giang.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.giang.entity.ChucVu;
import com.giang.entity.TaiKhoan;
import com.giang.service.TaiKhoanService;

@Controller
@RequestMapping("dangky")
public class DangKyController {
	
	@Autowired
	TaiKhoanService taikhoanService;
	
	@GetMapping
	public String DangKy(){
		return "dangky";
	}
	
	@PostMapping("/xulydangky")
	@ResponseBody
	@Transactional
	public String XuLyDangKy(@RequestParam String username, @RequestParam String password, String email){
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(password);
		
		TaiKhoan taikhoan= new TaiKhoan();
		taikhoan.setTenDangNhap(username);
		taikhoan.setMatKhau(hashedPassword);
		taikhoan.setEmail(email);
		taikhoan.setAnhDaiDien("user.png");
		ChucVu chucvu= new ChucVu();
		chucvu.setMaChucVu(2);
		taikhoan.setChucVu(chucvu);
		taikhoan.setVerification(getAlphaNumericString(8));
		
		TaiKhoan taikhoankt=taikhoanService.LayTaiKhoan(username);
		if(taikhoankt==null){
			boolean ktdk=taikhoanService.XuLyDangKy(taikhoan);
			if (ktdk) {
				return "thanhcong";
			}else{
				return "thatbai";
			}
		}else{
			return "tontai";
		}	
	}
	public String getAlphaNumericString(int n) 
    { 
  
        // chose a Character random from this String 
        String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                    + "0123456789"
                                    + "abcdefghijklmnopqrstuvxyz"; 
  
        // create StringBuffer size of AlphaNumericString 
        StringBuilder sb = new StringBuilder(n); 
  
        for (int i = 0; i < n; i++) { 
  
            // generate a random number between 
            // 0 to AlphaNumericString variable length 
            int index 
                = (int)(AlphaNumericString.length() 
                        * Math.random()); 
  
            // add Character one by one in end of sb 
            sb.append(AlphaNumericString 
                          .charAt(index)); 
        } 
  
        return sb.toString(); 
    } 
}
