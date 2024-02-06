package com.kim.model;

public class ReferenceDTO {
	private int hdb;
	private int tdb;
	private int dtim;
	private int use;
	
	public int getHdb() {
		return hdb;
	}
	public void setHdb(int hdb) {
		this.hdb = hdb;
	}
	public int getTdb() {
		return tdb;
	}
	public void setTdb(int tdb) {
		this.tdb = tdb;
	}
	public int getDtim() {
		return dtim;
	}
	public void setDtim(int dtim) {
		this.dtim = dtim;
	}
	public int getUse() {
		return use;
	}
	public void setUse(int use) {
		this.use = use;
	}
	@Override
	public String toString() {
		return "ReferenceDTO [hdb=" + hdb + ", tdb=" + tdb + ", dtim=" + dtim + ", use=" + use + "]";
	}
	
}
