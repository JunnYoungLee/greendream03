package com.kim.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kim.model.YangMemberDTO;
import com.kim.service.YangService;

@Controller
public class MembershipController {
	
	@Autowired
	private YangService ys;
	
	@GetMapping("login")
	public String membership() {
		return("/Yang/YangLogin");
	}
	
}

