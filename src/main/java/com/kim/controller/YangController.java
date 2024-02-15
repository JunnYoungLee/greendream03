package com.kim.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
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
import com.kim.model.ReferenceDTO;
import com.kim.service.YangService;

@Controller
public class YangController {
	
	@Autowired
	YangMapper ym;
	@Autowired
	YangService ys;
	
	@GetMapping("member")
	public String member() {
		return "Yang/YangMember";
	}
	
	@GetMapping("login")
	public String login() {
		return "Yang/YangLogin";
	}
	
	@RequestMapping(value="Warehouse", method=RequestMethod.GET)
	public String warehouse(){
		
		return "Yang/Warehouse";
	}
	
	@RequestMapping(value="wh", method=RequestMethod.GET)
	public void userReference(@RequestParam(value="user", required=false) String user,
								@RequestParam(value="utim", required=false) String utim,
								ReferenceDTO userdto,
								HttpServletRequest request,
								HttpServletResponse response,
								HttpSession session,
								Model model){
		
		model.addAttribute("user", user);
		model.addAttribute("utim", utim);
		System.out.println(user);
		System.out.println(utim	);
		
		userdto.setUser(user);
		userdto.setUtim(utim);
		
		ym.userReference(userdto);
		
	}
	
	@RequestMapping(value="move", method=RequestMethod.GET)
	public ResponseEntity<?> movement(){
		return new ResponseEntity<>(ym.movement(),HttpStatus.OK);
	}
	
	@RequestMapping(value="mt", method=RequestMethod.GET)
	public ResponseEntity<?> motion(){
		return new ResponseEntity<>(ys.motion(),HttpStatus.OK);
		
	}
}
