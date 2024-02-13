package com.kim.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kim.mapper.YangMapper;
import com.kim.model.SupplyDTO;
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
		int result = 0;
		
		/*int result = ys.loginCheck(yldto); // 결과값이 1 or 0  
		if(result == 1) {    0 과 1 의 값으로 비교해서 로그인만 사용하는 기능.
		session.setMaxInactiveInterval(30/2);
		}*/
		
		YangMemberDTO yd = new YangMemberDTO();
		
			yd = ys.loginCheck_value(yldto);
			
			session.setAttribute("yldto",ys.loginCheck_value(yldto)); 
			
			if (yd.getId() != null) {
				
				session.setAttribute("yldto",ys.loginCheck_value(yldto)); 
				result = 1;
				
			} 
			
		return new ResponseEntity<>(result, HttpStatus.OK);
	}

	@GetMapping("logout")
	public String logout(HttpSession session) {
		
		session.invalidate();

		return "redirect:/";
	}
}
