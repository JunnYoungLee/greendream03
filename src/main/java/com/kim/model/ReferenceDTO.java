package com.kim.model;

public class ReferenceDTO {
	private String hdb;
	private String tdb;
	private String dtim;
	private String user;
	private String utim;
	private int tno;
	
	public String getHdb() {
		return hdb;
	}
	
	public void setHdb(String hdb) {
		this.hdb = hdb;
	}
	public String getTdb() {
		return tdb;
	}
	public void setTdb(String tdb) {
		this.tdb = tdb;
	}
	public String getDtim() {
		return dtim;
	}
	public void setDtim(String dtim) {
		this.dtim = dtim;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getUtim() {
		return utim;
	}
	public void setUtim(String utim) {
		this.utim = utim;
	}
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}

	@Override
	public String toString() {
		return "ReferenceDTO [hdb=" + hdb + ", tdb=" + tdb + ", dtim=" + dtim + ", user=" + user + ", utim=" + utim
				+ ", tno=" + tno + "]";
	}
	

	
}
