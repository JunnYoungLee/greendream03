package com.kim.servicelmpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kim.mapper.SupplyMapper;
import com.kim.model.OrderDTO;
import com.kim.model.SupplyDTO;
import com.kim.model.SupplyOrderDTO;
import com.kim.model.YangMemberDTO;
import com.kim.service.SupplyService;

@Service
public class SupplyServiceImpl implements SupplyService {

	@Autowired 
	SupplyMapper sm;

	public List<SupplyDTO> supplyList(){

		return sm.supplyList();
	}

	public ArrayList<OrderDTO> purchaseList(String chk_arr){

		return sm.purchaseList(chk_arr);
	}

	public List<OrderDTO> purchaseList(){

		return sm.purchaseList_1();
	}

	public List<SupplyOrderDTO> supplyOrderList(){

		return sm.supplyOrderList();
	}
	public int purchaseSum(OrderDTO order){
		return sm.purchaseSum(order);
	}
	
	public void supplyOrder(int data){
		sm.supplyOrder(data);
	}
	
	public ArrayList<HashMap<String, Object>> join_supplier(){
		return sm.join_supplier();
	}
	
	public ArrayList<HashMap<String, Object>> select_supplier(String supplier){
		return sm.select_supplier(supplier);
	}
	
	public ArrayList<YangMemberDTO> orderMember(){
		return sm.orderMember();
	}
	
}
