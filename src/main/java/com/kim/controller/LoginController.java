package com.kim.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kim.service.YangService;



@Controller
public class LoginController {
	@Autowired
	YangService ys;
	
	@PostMapping("/idCheck")
	@ResponseBody
	public String idCheck(String name) {
		String chk = "";
		int result = 0;
		System.out.println("Name을 보자 ->"+name);
		result = ys.idCheck(name);
		if(result == 1) {
			chk = "redundancy"; // name 중복
		}else if (result == 0) {
			chk = "noredundancy"; //name 중복아님
		}
		return chk;
	}
}
