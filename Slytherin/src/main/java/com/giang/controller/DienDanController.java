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
import com.giang.entity.Thich;
import com.giang.service.HinhAnhService;
import com.giang.service.ThichService;

@Controller
@RequestMapping("diendan")
public class DienDanController {
	
	@Autowired
	HinhAnhService hinhanhService;
	
	@Autowired
	ThichService thichService;
	
	@Transactional
	@GetMapping
	public String DienDan(ModelMap modelMap, HttpSession httpSession){
		List<HinhAnh> dshinhanh= hinhanhService.LayDanhSachHinhAnhForum();
		if(httpSession.getAttribute("user")!= null){
			TaiKhoan taikhoan= (TaiKhoan)httpSession.getAttribute("user");
			List<Thich> thichs=thichService.LayTrangThaiThichCacAnhCuaNguoiDung(taikhoan.getMaTaiKhoan());
			for (int i=0;i<dshinhanh.size();i++) {
				Thich t= new Thich();
				/*if(dshinhanh.get(i).getMaHinhAnh()!=thichs.get(i).getHinhanh().getMaHinhAnh()){
					t.setHinhanh(dshinhanh.get(i));
					t.setTaikhoan(taikhoan);
					t.setTrangThai(0);
					thichs.add(t);
				}*/
				t.setHinhanh(dshinhanh.get(i));
				t.setTaikhoan(taikhoan);
				t.setTrangThai(0);
				thichs.add(t);
				
			}
			modelMap.addAttribute("thichs",thichs);
			for (Thich thich : thichs) {
				System.out.println(thich.getHinhanh().getMaHinhAnh()+" "+thich.getTrangThai());
			}
		}
		
		modelMap.addAttribute("dshinhanh", dshinhanh);
		
		return "diendan";
	}
}
