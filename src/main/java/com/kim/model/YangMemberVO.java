package com.kim.model;

public class YangMemberVO {
	/* VO(혹은 DAO로 쓰인다.) DB를 가져오는 용 */
	// 직원용 회원가입
	private String name;
	private String password;
	private String dept;
	private String pst;
	private String brh;
	private String email;
	private String pn;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getPst() {
		return pst;
	}
	public void setPst(String pst) {
		this.pst = pst;
	}
	public String getBrh() {
		return brh;
	}
	public void setBrh(String brh) {
		this.brh = brh;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPn() {
		return pn;
	}
	public void setPn(String pn) {
		this.pn = pn;
	}
	@Override
	public String toString() {
		return "YangMemberVO [name=" + name + ", password=" + password + ", dept=" + dept + ", pst=" + pst + ", brh="
				+ brh + ", email=" + email + ", pn=" + pn + "]";
	}
	
}