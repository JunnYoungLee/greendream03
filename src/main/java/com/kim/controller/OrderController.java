package com.kim.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kim.model.GpsDTO;
import com.kim.model.OrderDTO;
import com.kim.model.YangMemberDTO;
import com.kim.service.OrderService;


@Controller
public class OrderController {
	
	@Autowired
	OrderService os;
	
	// 물품 관리 페이지
	@GetMapping("management")
	public String mi(Model model, OrderDTO order, HttpServletRequest request) {
		HttpSession session = request.getSession();
		YangMemberDTO login = (YangMemberDTO)session.getAttribute("yldto");
		String dept = login.getDept();
		if(dept.equals("재무과")) {
			model.addAttribute("inList", os.list());
		}
		else {
			model.addAttribute("inList", os.medical_department_list(login));
		}

		return "Jun/management";
	}
	// 의료용품 사용관리 페이지
	// 페이지 이동시 세션값을 통해 부서(dept를 통해 mapper에서 '내과'를 {dept}로 수정할 것
		@GetMapping("consume")
		public String ui(Model model, OrderDTO order, HttpServletRequest request) {
			HttpSession session = request.getSession();
			YangMemberDTO login = (YangMemberDTO)session.getAttribute("yldto");
			String dept = login.getDept();
			if(dept.equals("재무과")) {
				model.addAttribute("inList", os.list());
			}
			else {
				model.addAttribute("inList", os.medical_department_list(login));
			}
			return "Jun/consume";
		}
		
	// 의료용품 구매요청 페이지
	@GetMapping("request")
	public String request(Model model, OrderDTO order, HttpServletRequest request) {
		HttpSession session = request.getSession();
		YangMemberDTO login = (YangMemberDTO)session.getAttribute("yldto");
		String dept = login.getDept();
		if(dept.equals("재무과")) {
			model.addAttribute("inList", os.list());
		}
		else {
			model.addAttribute("inList", os.medical_department_list(login));
		}
		return "Jun/request";
	}
	// 의료용품 발주관리 페이지
	@GetMapping("order")
	public String order(Model model,OrderDTO order, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String supplier = (String) session.getAttribute("supplier");
		
		if(supplier == null) {
			model.addAttribute("inList", os.request_list(order));
		
		}else if ( supplier.equals("전체보기")) {
			model.addAttribute("inList", os.request_list(order));
	
		}else {
			model.addAttribute("inList", os.request_selected_list(supplier));
	
		}
	
		return "Jun/order";
	}
	@ResponseBody
	@PostMapping("orderSlected")
	public void orders(Model model,@RequestParam("supplier") String supplier,OrderDTO order, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("supplier", supplier);
	
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
	// 구매요청 삭제
	@ResponseBody
	@PostMapping("requestDelete")
	public  void requestDelete(@RequestParam("del_rno") String del_rno) {
		System.out.println(del_rno);
		System.out.println("aa");
		os.request_delete(del_rno);
		
		
	}
	
	// 카카오맵 테스트
	@GetMapping("kakaoT")
	public String kakaoT(GpsDTO gps, Model model) {
		
		
		model.addAttribute("gps", os.gps_info(gps));
		return "Jun/kakomap";
	}
	
	// gps 위도 경도 업데이트
	@ResponseBody
	@PutMapping("gps")
	public  void gps(@RequestBody GpsDTO gps) {
		System.out.println(gps);
		os.gps_update(gps);
		
	}
	
	
	
	
}
