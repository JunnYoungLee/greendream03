package com.kim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class YangController {
	
	@GetMapping("member")
	public String member() {
		return "Yang/YangMember";
	}

}
