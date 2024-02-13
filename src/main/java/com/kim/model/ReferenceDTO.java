package com.kim.model;

public class ReferenceDTO {
	private String hdb;
	private String tdb;
	private String dtim;
	private String user;
	private String utim;
	private String useruptim;
	private String motion;
	private String mtime;
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
	public String getUseruptim() {
		return useruptim;
	}
	public void setUseruptim(String useruptim) {
		this.useruptim = useruptim;
	}
	public String getMotion() {
		return motion;
	}
	public void setMotion(String motion) {
		this.motion = motion;
	}
	public String getMtime() {
		return mtime;
	}
	public void setMtime(String mtime) {
		this.mtime = mtime;
	}
	@Override
	public String toString() {
		return "ReferenceDTO [hdb=" + hdb + ", tdb=" + tdb + ", dtim=" + dtim + ", user=" + user + ", utim=" + utim
				+ ", useruptim=" + useruptim + ", motion=" + motion + ", mtime=" + mtime + "]";
	}
	
}
