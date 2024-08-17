package com.pcwk.ehr.behaving;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pcwk.ehr.cmn.PLog;

@Controller
@RequestMapping("living")
public class LivingController implements PLog {


	public LivingController() {
		log.debug("LivingController");
	}
	
	@GetMapping("livingMain.do")
	public String livingMain() {
		return "living/livingMain";
	}

	@GetMapping("{number}.do")
	public String handleLiving(@PathVariable("number") int number) {
		String viewName = "living/";
		
		switch(number) {
		case 1:
			viewName += "summerWater";
			break;
		case 2:
			viewName += "mountainSafety";
			break;
		case 3:
			viewName += "firstAid";
			break;
		case 4:
			viewName += "jellyfish";
			break;
		case 5:
			viewName += "cpr";
			break;
		case 6:
			viewName += "fireAnt";
			break;
		case 7:
			viewName += "elevator";
			break;
		case 8:
			viewName += "childFacilities";
			break;
		case 9:
			viewName += "foodPoisoning";
			break;
		case 10:
			viewName += "missing";
			break;			
		case 11:
			viewName += "schoolViolence";
			break;				
		case 12:
			viewName += "familyViolence";
			break;			
		case 13:
			viewName += "petroleum";
			break;			
		
		
		}
		return viewName;
	}
	
}
