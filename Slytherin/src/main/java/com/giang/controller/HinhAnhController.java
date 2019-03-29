package com.giang.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.giang.service.BinhLuanService;
import com.giang.service.HinhAnhService;
import com.giang.service.ThichService;
import com.giang.entity.BinhLuan;
import com.giang.entity.HinhAnh;
import com.giang.entity.TaiKhoan;
import com.giang.entity.Thich;

@Controller
@RequestMapping("hinhanh")
public class HinhAnhController {
	
	@Autowired
	HinhAnhService hinhanhService;
	
	@Autowired
	BinhLuanService binhluanService;
	
	@Autowired
	ThichService thichService;
	
	@GetMapping
	public String HinhAnhMacDinh(){
		return "hinhanh";
	}
	@Transactional
	@GetMapping("/{tenhinhanh:.+}")
	public String HinhAnh(@PathVariable String tenhinhanh, ModelMap modelMap,HttpSession httpSession){
		HinhAnh hinhanh =hinhanhService.LayHinhAnhTheoTen(tenhinhanh);
		List<BinhLuan> binhLuans=binhluanService.LayDanhSachBinhLuan(hinhanh.getMaHinhAnh());
		List<HinhAnh> anhcungchude=hinhanhService.LayAnhCungChuDe(hinhanh.getBosuutap().getMaBoSuuTap());
		List<HinhAnh> anhtaitro=hinhanhService.LayAnhTaiTro();
		if(httpSession.getAttribute("user")!=null){
			TaiKhoan taikhoan=(TaiKhoan)httpSession.getAttribute("user");
			Thich thich=thichService.LayTrangThaiThichAnhCuaNguoiDung(hinhanh.getMaHinhAnh(), taikhoan.getMaTaiKhoan());
			modelMap.addAttribute("thich",thich);
		}
		
		modelMap.addAttribute("hinhanh",hinhanh);
		modelMap.addAttribute("binhluans", binhLuans);
		modelMap.addAttribute("anhcungchude",anhcungchude);
		modelMap.addAttribute("anhtaitro", anhtaitro);
		
		return "hinhanh";
	}
	@PostMapping("thich")
	@Transactional
	@ResponseBody
	public String XuLyThich(@RequestParam int idImage,HttpSession httpSession){
		if(httpSession.getAttribute("user")!=null){
			TaiKhoan taikhoan=(TaiKhoan) httpSession.getAttribute("user");
			Thich thich=thichService.LayTrangThaiThichAnhCuaNguoiDung(idImage, taikhoan.getMaTaiKhoan());
			if(thich==null){
				HinhAnh ha= new HinhAnh();
				ha.setMaHinhAnh(idImage);
				TaiKhoan tk= new TaiKhoan();
				tk.setMaTaiKhoan(taikhoan.getMaTaiKhoan());
				Thich thichxl= new Thich();
				thichxl.setHinhanh(ha);
				thichxl.setTaikhoan(tk);
				thichxl.setTrangThai(1);
				boolean xulythich=thichService.XuLyThich(thichxl);
				if(xulythich){
					return "thanhcong";
				}else{
					return "nothing";
				}
			}else{
				thichService.XuLyBoThich(thich);
				return "thatbai";
			}
			
		}else
			return "nothing";
	}
	@PostMapping("binhluan")
	@Transactional
	@ResponseBody
	public String XuLyBinhLuan(@RequestParam int idImage,@RequestParam String comment,HttpSession httpSession){
		if(httpSession.getAttribute("user")!=null){
			TaiKhoan taikhoan=(TaiKhoan) httpSession.getAttribute("user");
			HinhAnh ha= new HinhAnh();
			ha.setMaHinhAnh(idImage);
			
			BinhLuan binhluan=new BinhLuan();
			binhluan.setHinhanh(ha);
			binhluan.setTaikhoan(taikhoan);
			binhluan.setBinhLuan(comment);
			
			boolean xlbinhluan=binhluanService.XuLyBinhLuan(binhluan);
			if(xlbinhluan){
				return "thanhcong";
			}else
				return "thatbai";
		}else
			return "chuadangnhap";
	}
}
