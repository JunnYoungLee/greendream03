package com.kim.mapper;

import java.util.ArrayList;
import java.util.List;

import com.kim.model.CriteriaVO;
import com.kim.model.GpsDTO;
import com.kim.model.OrderDTO;
import com.kim.model.SupplyOrderDTO;
import com.kim.model.YangMemberDTO;


public interface OrderMapper {
	// 전체 창고 리스트
	public ArrayList<OrderDTO> list(CriteriaVO cri);
	// 창고 전체 리스트에서 개수 select
	public int list_total(CriteriaVO cri);
	// 진료과 창고 리스트
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
	public ArrayList<OrderDTO>request_selected_list(String supplierr);
	// 요청 리스트 삭제
	public void request_delete(String del_rno);
	// gpsA 업데이트
	public void gpsA_update(GpsDTO gps);
	// gpsB 업데이트
	public void gpsB_update(GpsDTO gps);
	// gpsA 정보 가져오기
	public GpsDTO gpsA_info(GpsDTO gps);
	// gpsB 정보 가져오기
	public GpsDTO gpsB_info(GpsDTO gps);
	// 입고 현황 리스트
	public ArrayList<SupplyOrderDTO> warehousing();
	public List<SupplyOrderDTO> complete();

	public int total(CriteriaVO cri);
}
