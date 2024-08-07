package com.pcwk.ehr.messageArea.domain;

public class MessageArea {
	private int messageSeq;
	private String messageAreaNm;
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
		return "MessageArea [messageSeq=" + messageSeq + ", messageAreaNm=" + messageAreaNm + "]";
	}
	public MessageArea() {
	}
	

}
