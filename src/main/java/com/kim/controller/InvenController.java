package com.kim.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InvenController {
	
	@GetMapping("inven")
	public String inventoryPage() {
		return "Joo/inventoryPage";
	}
}
