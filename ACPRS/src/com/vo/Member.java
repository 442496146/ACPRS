package com.vo;

public class Member extends Person {
	private String pc_code;
	private boolean is_chair = false;
	private boolean is_spc = false;

	public boolean isIs_chair() {
		return is_chair;
	}

	public void setIs_chair(boolean is_chair) {
		this.is_chair = is_chair;
	}

	public boolean isIs_spc() {
		return is_spc;
	}
	
	public void setIs_spc(boolean is_spc) {
		this.is_spc = is_spc;
	}
	
	public String getPc_code() {
		return pc_code;
	}

	public void setPc_code(String pc_code) {
		this.pc_code = pc_code;
	}
}
