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
	
	// 내과 물품 관리 페이지
	@GetMapping("management")
	public String mi(Model model, OrderDTO order) {
		model.addAttribute("inList", os.medical_department_list());
		return "Jun/management";
	}
	// 내과 의료용품 사용관리 페이지
	// 페이지 이동시 세션값을 통해 부서(dept를 통해 mapper에서 '내과'를 {dept}로 수정할 것
		@GetMapping("consume")
		public String ui(Model model, OrderDTO order) {
			model.addAttribute("inList", os.medical_department_list());
			return "Jun/consume";
		}
		
	// 내과 의료용품 구매요청 페이지
	@GetMapping("request")
	public String request(Model model, OrderDTO order) {

		model.addAttribute("inList", os.medical_department_list());
		return "Jun/request";
	}
	// 내과 의료용품 발주관리 페이지
	@GetMapping("order")
	public String order(Model model, OrderDTO order) {
		
		model.addAttribute("inList", os.request_list());
		return "Jun/order";
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
		/*System.out.println(order);*/
		os.current_quantity_update(order);
		os.consumption_check(order);
		
	}
	// 구입 요청 
	@ResponseBody
	@PutMapping("requestInternal")
	public  void requestInternal(@RequestBody OrderDTO order) {
		System.out.println(order);
			
		os.request_check(order);
		
		
	}
	
	

}
