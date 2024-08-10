package com.pcwk.ehr.location.domain;

import com.pcwk.ehr.cmn.DTO;

public class Location extends DTO {

	private long locCode;   	 // 지역코드
	private String sido;    	 // 시도
	private String sigungu; 	 // 시군구
	private String eupmyeondong; // 읍면동
	private int parentLocCode;	 // 상위지역코드

	// defualt 생성자
	public Location() {

	}

	public long getLocCode() {
		return locCode;
	}

	public void setLocCode(long locCode) {
		this.locCode = locCode;
	}

	public String getSido() {
		return sido;
	}

	public void setSido(String sido) {
		this.sido = sido;
	}

	public String getSigungu() {
		return sigungu;
	}

	public void setSigungu(String sigungu) {
		this.sigungu = sigungu;
	}

	public String getEupmyeondong() {
		return eupmyeondong;
	}

	public void setEupmyeondong(String eupmyeondong) {
		this.eupmyeondong = eupmyeondong;
	}

	public int getParentLocCode() {
		return parentLocCode;
	}

	public void setParentLocCode(int parentLocCode) {
		this.parentLocCode = parentLocCode;
	}

	@Override
	public String toString() {
		return "Location [locCode=" + locCode + ", sido=" + sido + ", sigungu=" + sigungu + ", eupmyeondong="
				+ eupmyeondong + ", parentLocCode=" + parentLocCode + ", toString()=" + super.toString() + "]";
	}

}
