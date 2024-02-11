package com.kim.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kim.model.OrderDTO;
import com.kim.model.SupplyDTO;
import com.kim.model.SupplyOrderDTO;
import com.kim.model.YangMemberDTO;
import com.kim.service.SupplyService;

@Controller
public class AccountController {
	
	@Autowired
	SupplyService ss;
	
	// 재무과에서 발주 신청하는 페이지
	@RequestMapping(value="A", method={RequestMethod.GET})
	public String accountPage(Model model, @RequestParam(value= "chk_arr", required=false) List<String> chk_arr) {

		int total = 0;
		
		ArrayList<OrderDTO> aa = new ArrayList<OrderDTO>(); // aa라는 배열 선언
		
		for(int i = 0; i < chk_arr.size(); i++) {// 배열의 길이만큼 반복
			
			aa.addAll(ss.purchaseList(chk_arr.get(i))); // 배열의 인덱스값을 이용해서  rno값을 찾음 
					
			total += (aa.get(i).getUnit_price() * aa.get(i).getRequest_quantity() + aa.get(i).getUnit_price() * aa.get(i).getRequest_quantity() * 0.1 ); 
		}

		model.addAttribute("total", total);
		model.addAttribute("select_supplier", ss.select_supplier(aa.get(0).getSupplier())); // 첫번째 나온 값의 회사 정보 출력
		model.addAttribute("purchaseList", aa);
		model.addAttribute("orderMember", ss.orderMember());
		
		
		ArrayList<HashMap<String, Object>> join_supplier = ss.join_supplier();
		model.addAttribute("join_supplier", join_supplier);
		/*int aa2 = ss.purchaseSum(order);
		System.out.println(aa2);
		model.addAttribute("sum", ss.purchaseSum(order));*/
		return "Joo/accountPage";
		
	}
	
	@GetMapping("B")
	public String inventoryPages(Model model) {
		
		return "Joo/headers";
		
	}
	
	// 거래명세서 페이지
	@GetMapping("transactionPage")
	public String transactionPage(Model model,SupplyOrderDTO supplyOrder, HttpServletRequest request) {
		
		// rno
		String hidden = request.getParameter("hidden");
		model.addAttribute("hidden", hidden);
		System.out.println(hidden);
		
		// total
		String total = request.getParameter("total");
		model.addAttribute("total", total);
		System.out.println(total);
		
		// 공급회사
		List<SupplyDTO> supplyList = ss.supplyList();
		model.addAttribute("supplyList", supplyList);
		
		// 발주 목록
		List<SupplyOrderDTO> supplyOrderList = ss.supplyOrderList();
		model.addAttribute("supplyOrderList", supplyOrderList);
		
		return "Joo/transactionPage";
	}
	
	// 발주 db에 insert 후 거래명세서로 이동
	@GetMapping("TssT")
	public void SS(@RequestParam("supply_price") String supply_price, @RequestParam("surtax") String surtax,
					@RequestParam("total_price") String total_price, @RequestParam("order_date") String order_date,
					@RequestParam("total") String total, @RequestParam("hidden") String hidden,
					@RequestParam("list[]") List<Integer> list, SupplyOrderDTO data) {
					
		System.out.println(list);
		System.out.println(supply_price);
		System.out.println(surtax);
		System.out.println(total_price);
		System.out.println(order_date);
		
		for(int i=0; i<list.size(); i++) {
			ss.supplyOrder(list.get(i));
		}
	}
	
	// 공급회사 관리 페이지 
	@GetMapping("S")
	public String supplyPage(Model model) {
		
		List<SupplyDTO> supplyList = ss.supplyList();
		model.addAttribute("supplyList", supplyList);

		return "Joo/supplyPage";
	}
	
	// 구매요청 확인 페이지 
	@GetMapping("L")
	public String listPage(Model model) {
		
		model.addAttribute("purchaseList", ss.purchaseList());
		
		return "Joo/listPage";
	}
	
	// 회원가입 페이지 
	@GetMapping("M")
	public String memberPage(Model model) {
		
		
		return "Joo/memberPage";
	}

	
}
