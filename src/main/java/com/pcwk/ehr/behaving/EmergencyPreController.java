package com.pcwk.ehr.behaving;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pcwk.ehr.cmn.PLog;

@Controller
@RequestMapping("emergencyPre")
public class EmergencyPreController implements PLog {

	public EmergencyPreController() {
		log.debug("EmergencyPreController");
	}
	
	@GetMapping("emergencyPreMain.do")
	public String natureMain() {
		return "emergencyPre/emergencyPreMain";
	}	

	@GetMapping("{number}.do")
	public String handleEmergencyPre(@PathVariable("number") int number) {
		String viewName = "emergencyPre/";

		switch(number) {
		case 1:
			viewName += "terrorism";
			break;
		case 2:
			viewName += "emergency";
			break;
		case 3:
			viewName += "defenseWarning";
			break;
		case 4:
			viewName += "preparation";
			break;		
		
		
		}
		
		return viewName;
	}
}


