package com.kim.service;

import java.util.ArrayList;

import com.kim.model.GpsDTO;
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
	public ArrayList<OrderDTO>request_list(OrderDTO order);	
	// 선택된 요청 리스트
	public ArrayList<OrderDTO>request_selected_list(String supplier);
	// 요청 리스트 삭제
	public void request_delete(String del_rno);
	// gps 업데이트
	public void gps_update(GpsDTO gps);
	// gps 정보 가져오기
	public GpsDTO gps_info(GpsDTO gps);
}
