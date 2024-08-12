package com.pcwk.ehr.event;

import org.springframework.context.ApplicationEvent;

public class MsgEvent extends ApplicationEvent {
	
	private String message;
	
	public MsgEvent(Object source,String message) {
		super(source);
		this.message = message;
	}
	
	public String getMessage() {
		return message;
	}

}
