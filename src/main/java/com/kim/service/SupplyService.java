package com.kim.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kim.model.OrderDTO;
import com.kim.model.SupplyDTO;
import com.kim.model.SupplyOrderDTO;

public interface SupplyService {

	public List<SupplyDTO> supplyList();
	
	public ArrayList<OrderDTO> purchaseList(String chk_arr);
	
	public List<OrderDTO> purchaseList();

	public List<SupplyOrderDTO> supplyOrderList();
	
	public int purchaseSum(OrderDTO order);
	
	public void supplyOrder(SupplyOrderDTO supplyOrder);
	
	public ArrayList<HashMap<String, Object>> join_supplier();
	
	public ArrayList<HashMap<String, Object>> select_supplier(String supplier);
}
