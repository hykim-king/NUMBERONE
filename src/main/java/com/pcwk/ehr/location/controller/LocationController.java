package com.pcwk.ehr.shelter.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pcwk.ehr.cmn.PLog;

@Controller
@RequestMapping("shelter")
public class ShelterController implements PLog{

	
	public ShelterController() {
		log.debug("┌───────────────────────────────────────┐");
		log.debug("│ ShelterController()                   │");
		log.debug("└───────────────────────────────────────┘");
	}
	
	@GetMapping("shelter.do")
	public String test() {
		String viewName = "shelter/shelter";
		
		return viewName;
	}
	
	
}
