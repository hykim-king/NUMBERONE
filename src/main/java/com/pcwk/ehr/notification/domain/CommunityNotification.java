package com.pcwk.ehr.notification.domain;

import com.pcwk.ehr.cmn.DTO;

public class CommunityNotification extends DTO {
	
	private int notiSeq;
	private String notiMsg;
	private String notiTargetUser;
	private String notiType;
	private int notiTargetSeq;
	private char isNotified;
	public CommunityNotification() {
	
	}
	public int getNotiSeq() {
		return notiSeq;
	}
	public void setNotiSeq(int notiSeq) {
		this.notiSeq = notiSeq;
	}
	public String getNotiMsg() {
		return notiMsg;
	}
	public void setNotiMsg(String notiMsg) {
		this.notiMsg = notiMsg;
	}
	public String getNotiTargetUser() {
		return notiTargetUser;
	}
	public void setNotiTargetUser(String notiTargetUser) {
		this.notiTargetUser = notiTargetUser;
	}
	public String getNotiType() {
		return notiType;
	}
	public void setNotiType(String notiType) {
		this.notiType = notiType;
	}
	public int getNotiTargetSeq() {
		return notiTargetSeq;
	}
	public void setNotiTargetSeq(int notiTargetSeq) {
		this.notiTargetSeq = notiTargetSeq;
	}
	public char getIsNotified() {
		return isNotified;
	}
	public void setIsNotified(char isNotified) {
		this.isNotified = isNotified;
	}
	@Override
	public String toString() {
		return "Notification [notiSeq=" + notiSeq + ", notiMsg=" + notiMsg + ", notiTargetUser=" + notiTargetUser
				+ ", notiType=" + notiType + ", notiTargetSeq=" + notiTargetSeq + ", isNotified=" + isNotified
				+ ", toString()=" + super.toString() + "]";
	}
	
	

}
