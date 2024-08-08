package com.pcwk.ehr.messageArea.domain;

import java.util.Set;

public class MessageArea {
	private int messageSeq;
	private String messageAreaNm;
	private Set<Integer> areaSet;
	public Set<Integer> getAreaSet() {
		return areaSet;
	}
	public void setAreaSet(Set<Integer> areaSet) {
		this.areaSet = areaSet;
	}
	public int getMessageSeq() {
		return messageSeq;
	}
	public void setMessageSeq(int messageSeq) {
		this.messageSeq = messageSeq;
	}
	public String getMessageAreaNm() {
		return messageAreaNm;
	}
	public void setMessageAreaNm(String messageAreaNm) {
		this.messageAreaNm = messageAreaNm;
	}
	
	@Override
	public String toString() {
		return "MessageArea [messageSeq=" + messageSeq + ", messageAreaNm=" + messageAreaNm + ", areaSet=" + areaSet
				+ "]";
	}
	public MessageArea() {
	}
	

}
