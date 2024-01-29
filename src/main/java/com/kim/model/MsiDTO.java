package com.kim.model;

public class MsiDTO {
	private String medical_supply_code;
	private String medical_supplies_name; 
	private String standard;
	private String unit;
	private int unit_price; 
	private String supplier;
	private String used_dept; 
	private String detail;
	
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
	public String getSupplier() {
		return supplier;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	public String getUsed_dept() {
		return used_dept;
	}
	public void setUsed_dept(String used_dept) {
		this.used_dept = used_dept;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	@Override
	public String toString() {
		return "MsiDTO [medical_supply_code=" + medical_supply_code + ", medical_supplies_name=" + medical_supplies_name
				+ ", standard=" + standard + ", unit=" + unit + ", unit_price=" + unit_price + ", supplier=" + supplier
				+ ", used_dept=" + used_dept + ", detail=" + detail + "]";
	}
	
}
