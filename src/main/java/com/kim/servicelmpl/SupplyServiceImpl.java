package com.kim.servicelmpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kim.mapper.SupplyMapper;
import com.kim.model.CriteriaVO;
import com.kim.model.OrderDTO;
import com.kim.model.SupplyDTO;
import com.kim.model.SupplyOrderDTO;
import com.kim.model.YangMemberDTO;
import com.kim.service.SupplyService;

@Service
public class SupplyServiceImpl implements SupplyService {

	@Autowired 
	SupplyMapper sm;

	public List<SupplyDTO> supplyList(int rno){

		return sm.supplyList(rno);
	}

	public ArrayList<OrderDTO> purchaseList(String chk_arr){

		return sm.purchaseList(chk_arr);
	}

	public List<OrderDTO> purchaseList(){

		return sm.purchaseList_1();
	}

	public List<SupplyOrderDTO> supplyOrderList(int rno){

		return sm.supplyOrderList(rno);
	}
	
	public int purchaseSum(OrderDTO order){
		return sm.purchaseSum(order);
	}
	
	public int supplyOrder(int data){
		return sm.supplyOrder(data);
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
	
	// 입고 완료 페이징 처리 리스트
	public List<SupplyOrderDTO> storeList(CriteriaVO cri){

		return sm.storeList(cri);
	}
	
	// 발주 완료 페이징 처리 리스트
	public List<SupplyOrderDTO> complete(CriteriaVO cri){
		
		return sm.complete(cri);
	}
	
	// 전체 발주완료 게시글 개수
	public int total(CriteriaVO cri) {
		return sm.total(cri);
	}
	
	// 전체 입고완료 게시글 개수
	public int total02(CriteriaVO cri) {
		return sm.total02(cri);
	}
	
}
