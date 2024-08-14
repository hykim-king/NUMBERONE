package com.pcwk.ehr.statisticsCondition.domain;

import com.pcwk.ehr.cmn.DTO;

public class StatisticsCondition extends DTO {
	private long locCode;
	private String startDate;
	private String endDate;
	private String disasterType;
	public String getDisasterType() {
		return disasterType;
	}
	public void setDisasterType(String disasterType) {
		this.disasterType = disasterType;
	}
	public long getLocCode() {
		return locCode;
	}
	public void setLocCode(long locCode) {
		this.locCode = locCode;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	
	@Override
	public String toString() {
		return "StatisticsCondition [locCode=" + locCode + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", disasterType=" + disasterType + "]";
	}
	public StatisticsCondition() {
	}
	


}
