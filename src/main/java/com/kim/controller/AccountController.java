package com.kim.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kim.model.SupplyDTO;
import com.kim.service.SupplyService;

@Controller
public class AccountController {
	
	@Autowired
	SupplyService ss;
	
	@GetMapping("A")
	public String inventoryPage() {
		return "Joo/accountPage";
	}
	
	@GetMapping("T")
	public String transctionPage() {
		return "Joo/transactionPage";
	}
	
	@GetMapping("S")
	public String supplyPage(SupplyDTO supply, Model model) {
		model.addAttribute("supplylist", ss.supplyList());
		return "Joo/supplyPage";
	}
}
