package com.kim.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
	@GetMapping("A")
	@ResponseBody
	public String accountPage(Model model, @RequestParam(value= "chk_arr[]", required=false)String[] chk_arr) {
		
		
		model.addAttribute("purchaseList", ss.purchaseList(chk_arr));
		System.out.println(ss.purchaseList(chk_arr));
		
		return "Joo/accountPage";
		
	}
	
	@GetMapping("B")
	public String inventoryPages(Model model) {
		
		return "Joo/headers";
		
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
	
}
