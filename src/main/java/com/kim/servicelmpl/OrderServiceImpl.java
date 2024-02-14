package com.kim.servicelmpl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kim.mapper.OrderMapper;
import com.kim.model.CriteriaVO;
import com.kim.model.GpsDTO;
import com.kim.model.OrderDTO;
import com.kim.model.SupplyOrderDTO;
import com.kim.model.YangMemberDTO;
import com.kim.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderMapper om;
	
	// 전체 창고 리스트
	public ArrayList<OrderDTO> list(CriteriaVO cri){
		return om.list(cri);
	}
	// 전체 창고 개수
	public int list_total(CriteriaVO cri) {
		return om.list_total(cri);
	}
	// 내과 창고 리스트
	public ArrayList<OrderDTO> medical_department_list(YangMemberDTO login){
		return om.medical_department_list(login);
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
	// 요청 리스트
	public ArrayList<OrderDTO>request_list(OrderDTO order){
		return om.request_list(order);	
	}
	
	// 선택된 요청 리스트
	public ArrayList<OrderDTO>request_selected_list(String supplierr){
		return om.request_selected_list(supplierr);	
	}
	// 요청 리스트 삭제
	public void request_delete(String del_rno) {
		om.request_delete(del_rno);	
	}
	// gpsA 위도 경도 업데이트
	public void gpsA_update(GpsDTO gps) {
		om.gpsA_update(gps);	
	}
	// gpsB 위도 경도 업데이트
	public void gpsB_update(GpsDTO gps) {
		om.gpsB_update(gps);	
	}
	// gpsA 정보 가져오기
	public GpsDTO gpsA_info(GpsDTO gps) {
		return om.gpsA_info(gps);	
	}
	// gpsB 정보 가져오기
	public GpsDTO gpsB_info(GpsDTO gps) {
		return om.gpsB_info(gps);	
	}
	// 입고 현황 리스트
	public ArrayList<SupplyOrderDTO> warehousing(){
		return om.warehousing();
	}
}
