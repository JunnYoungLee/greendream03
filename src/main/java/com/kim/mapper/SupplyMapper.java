package com.kim.mapper;

import java.util.ArrayList;
import java.util.List;

import com.kim.model.OrderDTO;
import com.kim.model.SupplyDTO;
import com.kim.model.SupplyOrderDTO;

public interface SupplyMapper {

	public List<SupplyDTO> supplyList();
	
	public ArrayList<OrderDTO> purchaseList(String chk_arr);
	
	public List<OrderDTO> purchaseList_1();
	
	public List<SupplyOrderDTO> supplyOrderList();
	
	public int purchaseSum(OrderDTO order);
	
}
