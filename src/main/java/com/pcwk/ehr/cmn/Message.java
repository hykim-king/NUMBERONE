package com.pcwk.ehr.cmn;

public class Message extends DTO{
	private int messageId;
	private String messageContents;
	
	public Message() {
		
	}
	
	public Message(int messageId, String messageContents) {
		super();
		this.messageId = messageId;
		this.messageContents = messageContents;
	}
	
	public int getMessageId() {
		return messageId;
	}
	
	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}
	
	public String getMessageContents() {
		return messageContents;
	}
	
	public void setMessageContents(String messageContents) {
		this.messageContents = messageContents;
	}
	
	@Override
	public String toString() {
		return "Message [messageId=" + messageId + ", messageContents=" + messageContents + "]";
	}	
}
