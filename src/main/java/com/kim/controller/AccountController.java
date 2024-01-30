package com.kim.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kim.model.MsiDTO;
import com.kim.model.SupplyDTO;
import com.kim.model.YangMemberDTO;
import com.kim.service.SupplyService;

@Controller
public class AccountController {
	
	@Autowired
	SupplyService ss;
	
	@GetMapping("A")
	public String accountPage(Model model) {
		
		List<MsiDTO> msiList = ss.msiList();
		model.addAttribute("msiList", msiList);
		
		return "Joo/accountPage";
	}
	
	@GetMapping("B")
	public String inventoryPages(Model model) {
		
		return "Joo/headers";
		
	}
	
	@GetMapping("T")
	public String transctionPage(Model model,YangMemberDTO member) {
		
		List<SupplyDTO> supplyList = ss.supplyList();
		model.addAttribute("supplyList", supplyList);
		
		List<MsiDTO> msiList = ss.msiList();
		model.addAttribute("msiList", msiList);
		
		YangMemberDTO memberList = ss.memberList(member);
		model.addAttribute("memberList", memberList);
		
		return "Joo/transactionPage";
	}
	
	@GetMapping("S")
	public String supplyPage(Model model) {
		
		List<SupplyDTO> supplyList = ss.supplyList();
		model.addAttribute("supplyList", supplyList);

		return "Joo/supplyPage";
	}
	
}
