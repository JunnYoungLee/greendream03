package com.kim.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kim.model.YangLoginDTO;
import com.kim.service.YangService;



@Controller
public class LoginController {
	@Autowired
	YangService ys;
	
	@RequestMapping(value="K_login", method=RequestMethod.POST)
	public ResponseEntity<?> loginCheck (@RequestParam("userId") String name,
							  @RequestParam("userPw") String password, 
							  YangLoginDTO yldto, 
							  HttpServletResponse response, 
							  HttpSession session)  {
		System.out.println("ㅎㅎ");
		
		yldto.setName(name);
		yldto.setPassword(password);
		
		
		int result = ys.loginCheck(yldto); // 1 or 0
		System.out.println(result);
		yldto.setName(name);
		yldto.setPassword(password);
		

		return new ResponseEntity<>(result, HttpStatus.OK);
		//로그인 하고 난뒤 세션을 만들어야함.
	}
}
