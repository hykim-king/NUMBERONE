package com.pcwk.ehr.member.domain;

import com.pcwk.ehr.cmn.DTO;

public class Member extends DTO {
    private String memberId;
    private long locCode;
    private String password;
    private String name;
    private String nickname;
    private char isAdmin;
    private String email;

    public Member() {}

    public Member(String memberId, String password) {
        this.memberId = memberId;
        this.password = password;
    }
    
    

	public Member(String memberId, long locCode, String password, String name, String nickname, char isAdmin,
			String email) {
		super();
		this.memberId = memberId;
		this.locCode = locCode;
		this.password = password;
		this.name = name;
		this.nickname = nickname;
		this.isAdmin = isAdmin;
		this.email = email;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public long getLocCode() {
		return locCode;
	}

	public void setLocCode(long locCode) {
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", locCode=" + locCode + ", password=" + password + ", name=" + name
				+ ", nickname=" + nickname + ", isAdmin=" + isAdmin + ", email=" + email + ", toString()="
				+ super.toString() + "]";
	}

    
    
	

    
}
