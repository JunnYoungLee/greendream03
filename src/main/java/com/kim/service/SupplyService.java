package com.kim.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kim.model.CriteriaVO;
import com.kim.model.OrderDTO;
import com.kim.model.SupplyDTO;
import com.kim.model.SupplyOrderDTO;
import com.kim.model.YangMemberDTO;

public interface SupplyService {

	public List<SupplyDTO> supplyList(int rno);
	
	public ArrayList<OrderDTO> purchaseList(String chk_arr);
	
	public List<OrderDTO> purchaseList();

	public List<SupplyOrderDTO> supplyOrderList(int rno);
	
	public int purchaseSum(OrderDTO order);
	
	public int supplyOrder(int data);
	
	public ArrayList<HashMap<String, Object>> join_supplier();
	
	public ArrayList<HashMap<String, Object>> select_supplier(String supplier);
	
	public ArrayList<YangMemberDTO> orderMember();
	
	public List<SupplyOrderDTO> storeList();
	
	public List<SupplyOrderDTO> complete(CriteriaVO cri);
	
	// 게시글 전체 개수
	public int total(CriteriaVO cri);
}
