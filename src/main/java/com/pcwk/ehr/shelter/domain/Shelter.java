package com.pcwk.ehr.shelter.domain;

import com.pcwk.ehr.cmn.DTO;

public class Shelter extends DTO {

	private int 	shelterSeq;     //순번
	private long 	locCode;        //지역코드
	private String  facilityName; 	//시설명
	private double  lat;          	//위도
	private double  lon;          	//경도
	private String  scale;        	//규모
	private int 	maxCapacity;    //최대수용인원
	private char 	accessibility;  //이동약자접근성
	private String  contactInfo;  	//연락처
	private String  roadAddress;  	//도로명전체주소
	private String  adminAddress; 	//행정동전체주소
	private String	shelterDiv;     //시설분류

	// default 생성자
	public Shelter() {

	}

	public int getShelterSeq() {
		return shelterSeq;
	}

	public void setShelterSeq(int shelterSeq) {
		this.shelterSeq = shelterSeq;
	}

	public long getLocCode() {
		return locCode;
	}

	public void setLocCode(long locCode) {
		this.locCode = locCode;
	}

	public String getFacilityName() {
		return facilityName;
	}

	public void setFacilityName(String facilityName) {
		this.facilityName = facilityName;
	}

	public double getLat() {
		return lat;
	}

	public void setLat(double lat) {
		this.lat = lat;
	}

	public double getLon() {
		return lon;
	}

	public void setLon(double lon) {
		this.lon = lon;
	}

	public String getScale() {
		return scale;
	}

	public void setScale(String scale) {
		this.scale = scale;
	}

	public int getMaxCapacity() {
		return maxCapacity;
	}

	public void setMaxCapacity(int maxCapacity) {
		this.maxCapacity = maxCapacity;
	}

	public char getAccessibility() {
		return accessibility;
	}

	public void setAccessibility(char accessibility) {
		this.accessibility = accessibility;
	}

	public String getContactInfo() {
		return contactInfo;
	}

	public void setContactInfo(String contactInfo) {
		this.contactInfo = contactInfo;
	}

	public String getRoadAddress() {
		return roadAddress;
	}

	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}

	public String getAdminAddress() {
		return adminAddress;
	}

	public void setAdminAddress(String adminAddress) {
		this.adminAddress = adminAddress;
	}

	public String getShelterDiv() {
		return shelterDiv;
	}

	public void setShelterDiv(String shelterDiv) {
		this.shelterDiv = shelterDiv;
	}

	@Override
	public String toString() {
		return "Shelter [shelterSeq=" + shelterSeq + ", locCode=" + locCode + ", facilityName=" + facilityName
				+ ", lat=" + lat + ", lon=" + lon + ", scale=" + scale + ", maxCapacity=" + maxCapacity
				+ ", accessibility=" + accessibility + ", contactInfo=" + contactInfo + ", roadAddress=" + roadAddress
				+ ", adminAddress=" + adminAddress + ", shelterDiv=" + shelterDiv + ", toString()=" + super.toString()
				+ "]";
	}

}
