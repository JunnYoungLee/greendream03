package com.kim.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
					
			total += (aa.get(i).getUnit_price() * aa.get(i).getRequest_quantity() + aa.get(i).getUnit_price() * 0.1 ); 
		}

		model.addAttribute("total", total);
		model.addAttribute("select_supplier", ss.select_supplier(aa.get(0).getSupplier())); // 첫번째 나온 값의 회사 정보 출력
		model.addAttribute("purchaseList", aa);
		
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
	
	// 발주
	@GetMapping("supplyOrder")
	public String supplyOrder(SupplyOrderDTO supplyOrder) {
		ss.medical_order(supplyOrder);
		
		return "T";
	}
	
	// 거래명세서 페이지
	@GetMapping("T")
	public String transctionPage(Model model,YangMemberDTO member) {
		
		List<SupplyDTO> supplyList = ss.supplyList();
		model.addAttribute("supplyList", supplyList);
		
		List<SupplyOrderDTO> supplyOrderList = ss.supplyOrderList();
		model.addAttribute("supplyOrderList", supplyOrderList);
		
		return "Joo/transactionPage";
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
