package com.pcwk.ehr.statisticsCondition.domain;

import com.pcwk.ehr.cmn.DTO;

public class StatisticsCondition extends DTO {
	private long locCode;
	private String startDate;
	private String endDate;
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
		return "Statistics [locCode=" + locCode + ", startDate=" + startDate + ", endDate=" + endDate + ", toString()="
				+ super.toString() + "]";
	}
	public StatisticsCondition() {
	}
	


}
