package com.kim.servicelmpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kim.mapper.SupplyMapper;
import com.kim.model.OrderDTO;
import com.kim.model.SupplyDTO;
import com.kim.model.SupplyOrderDTO;
import com.kim.service.SupplyService;

@Service
public class SupplyServiceImpl implements SupplyService {

	@Autowired 
	SupplyMapper sm;

	public List<SupplyDTO> supplyList(){

		return sm.supplyList();
	}

	public List<OrderDTO> purchaseList(String[] chk_arr){

		return sm.purchaseList(chk_arr);
	}

	public List<OrderDTO> purchaseList(){

		return sm.purchaseList_1();
	}

	public List<SupplyOrderDTO> supplyOrderList(){

		return sm.supplyOrderList();
	}


}
