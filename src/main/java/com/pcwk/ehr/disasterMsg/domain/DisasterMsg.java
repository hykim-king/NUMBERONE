package com.pcwk.ehr.disasterMsg.domain;

public class DisasterMsg {
	
	public DisasterMsg() {
		
	}
	private int messageSeq;
	private String disasterType;
	private String emergencyLevel;
	private String messageContext;
	private String msgRegDt;
	private String broadcastArea;
	private String broadcastOrganization;
	public int getMessageSeq() {
		return messageSeq;
	}
	public void setMessageSeq(int messageSeq) {
		this.messageSeq = messageSeq;
	}
	public String getDisasterType() {
		return disasterType;
	}
	public void setDisasterType(String disasterType) {
		this.disasterType = disasterType;
	}
	public String getEmergencyLevel() {
		return emergencyLevel;
	}
	public void setEmergencyLevel(String emergencyLevel) {
		this.emergencyLevel = emergencyLevel;
	}
	public String getMessageContext() {
		return messageContext;
	}
	public void setMessageContext(String messageContext) {
		this.messageContext = messageContext;
	}
	public String getMsgRegDt() {
		return msgRegDt;
	}
	public void setMsgRegDt(String msgRegDt) {
		this.msgRegDt = msgRegDt;
	}
	public String getBroadcastArea() {
		return broadcastArea;
	}
	public void setBroadcastArea(String broadcastArea) {
		this.broadcastArea = broadcastArea;
	}
	public String getBroadcastOrganization() {
		return broadcastOrganization;
	}
	public void setBroadcastOrganization(String broadcastOrganization) {
		this.broadcastOrganization = broadcastOrganization;
	}
	

}