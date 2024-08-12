package com.pcwk.ehr.event;

import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

@Component
public class MsgEventListener {
	
	@EventListener
	public void handleMsgEvent(MsgEvent event) {
		
	}

}
