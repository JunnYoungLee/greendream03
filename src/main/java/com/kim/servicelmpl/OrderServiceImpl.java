package com.kim.servicelmpl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kim.mapper.OrderMapper;
import com.kim.model.OrderDTO;
import com.kim.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderMapper om;
	
	// 전체 창고 리스트
	public ArrayList<OrderDTO> list(){
		return om.list();
	}
	// 내과 창고 리스트
	public ArrayList<OrderDTO> internal_list(){
		return om.internal_list();
	}
	
	// 현재고 업데이트
	public void current_quantity_update(OrderDTO order) {
		om.current_quantity_update(order);
	}
	// 의료용품 소모 체크	
	public void consumption_check(OrderDTO order) {
		om.consumption_check(order);
	}
	// 공급요청	
	public void request_check(OrderDTO order) {
		om.request_check(order);
	}
}
