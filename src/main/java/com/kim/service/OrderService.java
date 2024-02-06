package com.kim.service;

import java.util.ArrayList;

import com.kim.model.OrderDTO;
import com.kim.model.YangMemberDTO;

public interface OrderService {
	// 전체 창고 리스트
	public ArrayList<OrderDTO> list();
	// 내과 창고 리스트
	public ArrayList<OrderDTO> medical_department_list(YangMemberDTO login);
	// 현재고 업데이트
	public void current_quantity_update(OrderDTO order);
	// 의료용품 소모 체크	
	public void consumption_check(OrderDTO order);
	// 공급요청
	public void request_check(OrderDTO order);
	// 요청 리스트
	public ArrayList<OrderDTO>request_list(YangMemberDTO login);	
}
