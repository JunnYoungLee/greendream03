package com.kim.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.kim.mapper.SupplyMapper;
import com.kim.model.SupplyDTO;
import com.kim.service.SupplyService;

public class SupplyServiceImpl implements SupplyService {

	@Autowired 
	SupplyMapper sm;
	
/*	public ArrayList<SupplyDTO> supplyList(){
		
		return sm.supplyList();
	}*/
	
}
