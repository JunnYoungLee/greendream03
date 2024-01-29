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

import com.kim.mapper.YangMapper;
import com.kim.model.YangMemberDTO;
import com.kim.service.YangService;



@Controller
public class LoginController {
	@Autowired
	YangService ys;
	@Autowired
	YangMapper ym;
	
	
	@RequestMapping(value="K_login", method=RequestMethod.POST)
	public ResponseEntity<?> loginCheck (@RequestParam("userId") String id,
							  @RequestParam("userPw") String password, 
							  YangMemberDTO yldto,
							  HttpServletResponse response, 
							  HttpSession session) {
		
		yldto.setId(id);
		yldto.setPassword(password);
		
		int result = ys.loginCheck(yldto);
		session.setAttribute("loginCheck", ys.loginCheck(yldto));
		
		if(result == 1) {
			session.getAttribute(id); //수정중
		}
		
		return new ResponseEntity<>(result, HttpStatus.OK);
	}
	
}
