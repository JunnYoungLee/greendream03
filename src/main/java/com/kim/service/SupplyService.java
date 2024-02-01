package com.kim.service;

import java.util.List;

import com.kim.model.OrderDTO;
import com.kim.model.SupplyDTO;
import com.kim.model.SupplyOrderDTO;

public interface SupplyService {

	public List<SupplyDTO> supplyList();
	
	public List<OrderDTO> purchaseList(String[] chk_arr);
	
	public List<OrderDTO> purchaseList();

	public List<SupplyOrderDTO> supplyOrderList();
}
