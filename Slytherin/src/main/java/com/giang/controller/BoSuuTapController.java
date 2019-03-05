package com.giang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("bosuutap")
public class BoSuuTapController {
	
	@GetMapping
	public String BoSuutap(){
		return "bosuutap";
	}

}
