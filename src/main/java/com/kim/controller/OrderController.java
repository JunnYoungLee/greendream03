package com.kim.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kim.model.OrderDTO;

import com.kim.service.OrderService;


@Controller
public class OrderController {
	
	@Autowired
	OrderService os;
	
	@GetMapping("request")
	public String request(Model model, OrderDTO document) {
		ArrayList<OrderDTO> document1 = os.list();
		System.out.println(document1);
		model.addAttribute("list", os.list());
		return "Jun/request";
	}
	
	@GetMapping("managementInternal")
	public String mi(Model model, OrderDTO document) {
		model.addAttribute("miList", os.miList());
		return "Jun/managementInternal";
	}
	@GetMapping("useInternal")
	public String ui() {
		
		return "Jun/useInternal";
	}
}
