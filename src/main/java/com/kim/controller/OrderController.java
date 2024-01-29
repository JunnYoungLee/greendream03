package com.kim.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kim.model.OrderDTO;

import com.kim.service.OrderService;


@Controller
public class OrderController {
	
	@Autowired
	OrderService os;
	
	@GetMapping("requestInternal")
	public String request(Model model, OrderDTO order) {

		model.addAttribute("inList", os.internal_list());
		return "Jun/requestInternal";
	}
	
	@GetMapping("managementInternal")
	public String mi(Model model, OrderDTO order) {
		model.addAttribute("inList", os.internal_list());
		return "Jun/managementInternal";
	}
	
	@GetMapping("useInternal")
	public String ui(Model model, OrderDTO order) {
		model.addAttribute("inList", os.internal_list());
		return "Jun/useInternal";
	}
	// 날짜 세션 저장
	@ResponseBody
	@PostMapping("sessionInternal")
	public  void sessionInternal(@RequestParam("date") String date, @RequestParam("name") String name, HttpServletRequest request) {
		HttpSession session = request.getSession();
    	/*System.out.println(date);
    	System.out.println(name);*/
    	session.setAttribute("date", date);
    	session.setAttribute("name", name);
	}
	// 날짜 세션 저장2
	@ResponseBody
	@PostMapping("sessionInternal2")
	public  void sessionInternal2(@RequestParam("date") String date, @RequestParam("name") String name, HttpServletRequest request) {
		HttpSession session = request.getSession();
		/*System.out.println(date);
    	System.out.println(name);*/
		session.setAttribute("date", date);
		session.setAttribute("name", name);
	}
	
	// 소모량 체크 
	@ResponseBody
	@PutMapping("consumeInternal")
	public  void consumeInternal(@RequestBody OrderDTO order) {
		System.out.println(order);
		os.current_quantity_update(order);
		os.consumption_check(order);
		
	}
	// 구입 요청 
	@ResponseBody
	@PutMapping("requestInternal")
	public  void requestInternal(@RequestBody OrderDTO order) {
		/*System.out.println(order);*/
			
		os.request_check(order);
		
		
	}
	

}
