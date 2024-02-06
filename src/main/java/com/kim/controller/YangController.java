package com.kim.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.kim.mapper.YangMapper;
import com.kim.model.ReferenceDTO;

@Controller
public class YangController {
	
	@Autowired
	YangMapper ym;
	
	@GetMapping("member")
	public String member() {
		return "Yang/YangMember";
	}
	
	@GetMapping("login")
	public String login() {
		return "Yang/YangLogin";
	}
	@GetMapping("wh")
	public String userReference(ReferenceDTO userdto) {
		return "Yang/Warehouse";
	}
}
