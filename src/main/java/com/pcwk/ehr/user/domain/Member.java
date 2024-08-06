package com.pcwk.ehr.user.domain;

import com.pcwk.ehr.cmn.DTO;

public class Member extends DTO {
    private String memberId;
    private int locCode;
    private String password;
    private String name;
    private String nickname;
    private char isAdmin;
    
	public Member() {
			
	}
    
    
	public Member(String memberId, int locCode, String password, String name, String nickname, char isAdmin) {
		super();
		this.memberId = memberId;
		this.locCode = locCode;
		this.password = password;
		this.name = name;
		this.nickname = nickname;
		this.isAdmin = isAdmin;
	}


	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getLocCode() {
		return locCode;
	}
	public void setLocCode(int locCode) {
		this.locCode = locCode;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public char getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(char isAdmin) {
		this.isAdmin = isAdmin;
	}


	@Override
	public String toString() {
		return "User [memberId=" + memberId + ", locCode=" + locCode + ", password=" + password + ", name=" + name
				+ ", nickname=" + nickname + ", isAdmin=" + isAdmin + ", toString()=" + super.toString() + "]";
	}
    
    
    
}
