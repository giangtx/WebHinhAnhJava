package com.giang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("diendan")
public class DienDanController {
	@GetMapping
	public String DienDan(){
		return "diendan";
	}
}
