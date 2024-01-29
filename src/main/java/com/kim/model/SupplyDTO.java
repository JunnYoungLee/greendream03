package com.kim.model;

public class SupplyDTO {
	private String supplier;
	private String business_number;
	private String location;
	private String supplier_person;
	private String contact_infomation;
	private String email;
	
	public String getSupplier() {
		return supplier;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	public String getBusiness_number() {
		return business_number;
	}
	public void setBusiness_number(String business_number) {
		this.business_number = business_number;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getSupplier_person() {
		return supplier_person;
	}
	public void setSupplier_person(String supplier_person) {
		this.supplier_person = supplier_person;
	}
	public String getContact_infomation() {
		return contact_infomation;
	}
	public void setContact_infomation(String contact_infomation) {
		this.contact_infomation = contact_infomation;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "SupplyDTO [supplier=" + supplier + ", business_number=" + business_number + ", location=" + location
				+ ", supplier_person=" + supplier_person + ", contact_infomation=" + contact_infomation + ", email="
				+ email + "]";
	}
	
}
