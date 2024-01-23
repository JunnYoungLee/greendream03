package com.kim.model;

public class OrderDTO {
	private String dept;
	private String specialized_medical_supplies;
	private String medical_supply_code;
	private String medical_supplies_name;
	private String standard;
	private String unit;
	private String used_quantity;
	private String current_quantity;
	private String safety_inventory_quantuty;
	private String warehousing_quantity;
	
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getSpecialized_medical_supplies() {
		return specialized_medical_supplies;
	}
	public void setSpecialized_medical_supplies(String specialized_medical_supplies) {
		this.specialized_medical_supplies = specialized_medical_supplies;
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
	public String getUsed_quantity() {
		return used_quantity;
	}
	public void setUsed_quantity(String used_quantity) {
		this.used_quantity = used_quantity;
	}
	public String getCurrent_quantity() {
		return current_quantity;
	}
	public void setCurrent_quantity(String current_quantity) {
		this.current_quantity = current_quantity;
	}
	public String getSafety_inventory_quantuty() {
		return safety_inventory_quantuty;
	}
	public void setSafety_inventory_quantuty(String safety_inventory_quantuty) {
		this.safety_inventory_quantuty = safety_inventory_quantuty;
	}
	public String getWarehousing_quantity() {
		return warehousing_quantity;
	}
	public void setWarehousing_quantity(String warehousing_quantity) {
		this.warehousing_quantity = warehousing_quantity;
	}
	@Override
	public String toString() {
		return "DocumentDTO [dept=" + dept + ", specialized_medical_supplies=" + specialized_medical_supplies
				+ ", medical_supply_code=" + medical_supply_code + ", medical_supplies_name=" + medical_supplies_name
				+ ", standard=" + standard + ", unit=" + unit + ", used_quantity=" + used_quantity
				+ ", current_quantity=" + current_quantity + ", safety_inventory_quantuty=" + safety_inventory_quantuty
				+ ", warehousing_quantity=" + warehousing_quantity + "]";
	}
}
