package com.giang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("hoso")
public class HoSoController {
	@GetMapping
	public String HoSo(){
		return "hoso";
	}
	@RequestMapping("/anhcuatoi")
	public String AnhCuaToi(){
		return "anhcuatoi";
	}
	@RequestMapping("/taianh")
	public String TaiAnh(){
		return "taianh";
	}
	@RequestMapping("/duyetanh")
	public String DuyetAnh(){
		return "duyetanh";
	}
}
