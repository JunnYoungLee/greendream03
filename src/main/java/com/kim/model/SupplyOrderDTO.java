package com.kim.model;

public class SupplyOrderDTO {
	private String dept;
	private String medical_supply_code;
	private String medical_supplies_name;
	private String standard;
	private String unit;
	private String supplier;
	private int unit_price;
	private int order_quantity;
	private int supply_price;
	private int surtax;
	private int total_price;
	private String person_in_charge;
	private String date;
	private String special_note;
	private String progress_status;
	
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
		return progress_status;
	}
	public void setProgress_status(String progress_status) {
		this.progress_status = progress_status;
	}
	
	@Override
	public String toString() {
		return "SupplyOrderDTO [dept=" + dept + ", medical_supply_code=" + medical_supply_code
				+ ", medical_supplies_name=" + medical_supplies_name + ", standard=" + standard + ", unit=" + unit
				+ ", supplier=" + supplier + ", unit_price=" + unit_price + ", order_quantity=" + order_quantity
				+ ", supply_price=" + supply_price + ", surtax=" + surtax + ", total_price=" + total_price
				+ ", person_in_charge=" + person_in_charge + ", date=" + date + ", special_note=" + special_note
				+ ", progress_status=" + progress_status + "]";
	}
	
}
