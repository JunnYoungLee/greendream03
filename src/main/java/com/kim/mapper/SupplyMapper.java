package com.kim.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kim.model.CriteriaVO;
import com.kim.model.OrderDTO;
import com.kim.model.SupplyDTO;
import com.kim.model.SupplyOrderDTO;
import com.kim.model.YangMemberDTO;

public interface SupplyMapper {

	public List<SupplyDTO> supplyList(int rno);
	
	public ArrayList<OrderDTO> purchaseList(String chk_arr);
	
	public List<OrderDTO> purchaseList_1();
	
	public List<SupplyOrderDTO> supplyOrderList(int rno);
	
	public int purchaseSum(OrderDTO order);
	
	public int supplyOrder(int data);
	
	public ArrayList<HashMap<String, Object>> join_supplier();
	
	public ArrayList<HashMap<String, Object>> select_supplier(String join_supplier);
	
	public ArrayList<YangMemberDTO> orderMember();
	
	public List<SupplyOrderDTO> storeList(CriteriaVO cri);
	
	public List<SupplyOrderDTO> complete(CriteriaVO cri);

	// 발주 완료 게시글 전체 개수
	public int total(CriteriaVO cri);
	
	// 입고 완료 게시글 전체 개수
	public int total02(CriteriaVO cri);
}
