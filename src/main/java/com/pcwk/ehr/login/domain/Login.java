package com.pcwk.ehr.login.domain;

public class Login {
	 private String memberId;
	 private String password;
	 
	 
	 public Login() {}


	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public Login(String memberId, String password) {
		super();
		this.memberId = memberId;
		this.password = password;
	}


	@Override
	public String toString() {
		return "Login [memberId=" + memberId + ", password=" + password + ", toString()=" + super.toString() + "]";
	}
	 
	 
	 
}
