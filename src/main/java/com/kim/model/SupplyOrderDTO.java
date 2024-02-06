package com.kim.model;

public class SupplyOrderDTO {
	private String dept;					//부서
	private String medical_supply_code;		//의료용품 코드
	private String medical_supplies_name;	//의료용품명
	private String standard;				//규격
	private String unit;					//단위
	private String supplier;				//공급회사
	private int unit_price;					//단가
	private int order_quantity;				//발주수량
	private int supply_price;				//공급가액
	private int surtax;						//부가세
	private int total_price;				//총액
	private String person_in_charge;		//담당자
	private String date;					//발주날짜
	private String special_note;			//특이사항
	private String Progress_status;			//진행상태
	private int rno;
	
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
	public String getSupplier() {
		return supplier;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	public int getUnit_price() {
		return unit_price;
	}
	public void setUnit_price(int unit_price) {
		this.unit_price = unit_price;
	}
	public int getOrder_quantity() {
		return order_quantity;
	}
	public void setOrder_quantity(int order_quantity) {
		this.order_quantity = order_quantity;
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
	public String getPerson_in_charge() {
		return person_in_charge;
	}
	public void setPerson_in_charge(String person_in_charge) {
		this.person_in_charge = person_in_charge;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getSpecial_note() {
		return special_note;
	}
	public void setSpecial_note(String special_note) {
		this.special_note = special_note;
	}
	public String getProgress_status() {
		return Progress_status;
	}
	public void setProgress_status(String progress_status) {
		Progress_status = progress_status;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	
	@Override
	public String toString() {
		return "SupplyOrderDTO [dept=" + dept + ", medical_supply_code=" + medical_supply_code
				+ ", medical_supplies_name=" + medical_supplies_name + ", standard=" + standard + ", unit=" + unit
				+ ", supplier=" + supplier + ", unit_price=" + unit_price + ", order_quantity=" + order_quantity
				+ ", supply_price=" + supply_price + ", surtax=" + surtax + ", total_price=" + total_price
				+ ", person_in_charge=" + person_in_charge + ", date=" + date + ", special_note=" + special_note
				+ ", Progress_status=" + Progress_status + ", rno=" + rno + "]";
	}

}
