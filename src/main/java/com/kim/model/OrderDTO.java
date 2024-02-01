package com.kim.model;

public class OrderDTO {
	
	
	private int rno; // 순서
	private String dept; // 부서
	private String medical_supply_code; // 의료용품 코드
	private String medical_supplies_name; // 의료용품 이름
	private String standard; // 규격
	private String unit; // 단위
	private int unit_price; // 단가
	private int used_quantity; // 사용량
	private int current_quantity; // 현재고
	private int safety_inventory_quantuty; // 안전재고량
	private int request_quantity; // 요청 수량
	private int order_quantity; // 발주 수량
	private int supply_price; // 공급가액
	private int surtax; // 부가세
	private int total_price; // 총액
	private int warehousing_quantity; // 입고예정량
	private String date; // 날짜
	private String person_in_charge; // 담당자 
	private String supplier; // 공급회사
	private String special_note; // 특이사항
	private String progress_status; // 진행상황
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getMedical_supply_code() {
		return medical_supply_code;
	}
	public void setMedical_supply_code(String medical_supply_code) {
		this.medical_supply_code = medical_supply_code;
	}
	public String getMedical_supplies_name() {
		return medical_supplies_name;
	}
	public void setMedical_supplies_name(String medical_supplies_name) {
		this.medical_supplies_name = medical_supplies_name;
	}
	public String getStandard() {
		return standard;
	}
	public void setStandard(String standard) {
		this.standard = standard;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public int getUnit_price() {
		return unit_price;
	}
	public void setUnit_price(int unit_price) {
		this.unit_price = unit_price;
	}
	public int getUsed_quantity() {
		return used_quantity;
	}
	public void setUsed_quantity(int used_quantity) {
		this.used_quantity = used_quantity;
	}
	public int getCurrent_quantity() {
		return current_quantity;
	}
	public void setCurrent_quantity(int current_quantity) {
		this.current_quantity = current_quantity;
	}
	public int getSafety_inventory_quantuty() {
		return safety_inventory_quantuty;
	}
	public void setSafety_inventory_quantuty(int safety_inventory_quantuty) {
		this.safety_inventory_quantuty = safety_inventory_quantuty;
	}
	public int getRequest_quantity() {
		return request_quantity;
	}
	public int getSupply_price() {
		return supply_price;
	}
	public void setSupply_price(int supply_price) {
		this.supply_price = supply_price;
	}
	public int getSurtax() {
		return surtax;
	}
	public void setSurtax(int surtax) {
		this.surtax = surtax;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	public int getOrder_quantity() {
		return order_quantity;
	}
	public void setOrder_quantity(int order_quantity) {
		this.order_quantity = order_quantity;
	}
	public void setRequest_quantity(int request_quantity) {
		this.request_quantity = request_quantity;
	}
	public int getWarehousing_quantity() {
		return warehousing_quantity;
	}
	public void setWarehousing_quantity(int warehousing_quantity) {
		this.warehousing_quantity = warehousing_quantity;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPerson_in_charge() {
		return person_in_charge;
	}
	public void setPerson_in_charge(String person_in_charge) {
		this.person_in_charge = person_in_charge;
	}
	public String getSupplier() {
		return supplier;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	public String getSpecial_note() {
		return special_note;
	}
	public void setSpecial_note(String special_note) {
		this.special_note = special_note;
	}
	public String getProgress_status() {
		return progress_status;
	}
	public void setProgress_status(String progress_status) {
		this.progress_status = progress_status;
	}
	@Override
	public String toString() {
		return "OrderDTO [rno=" + rno + ", dept=" + dept + ", medical_supply_code=" + medical_supply_code
				+ ", medical_supplies_name=" + medical_supplies_name + ", standard=" + standard + ", unit=" + unit
				+ ", unit_price=" + unit_price + ", used_quantity=" + used_quantity + ", current_quantity="
				+ current_quantity + ", safety_inventory_quantuty=" + safety_inventory_quantuty + ", request_quantity="
				+ request_quantity + ", order_quantity=" + order_quantity + ", supply_price=" + supply_price
				+ ", surtax=" + surtax + ", total_price=" + total_price + ", warehousing_quantity="
				+ warehousing_quantity + ", date=" + date + ", person_in_charge=" + person_in_charge + ", supplier="
				+ supplier + ", special_note=" + special_note + ", progress_status=" + progress_status + "]";
	}



	


}
