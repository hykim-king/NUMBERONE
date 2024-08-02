package com.pcwk.ehr.behaving;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("society")
public class SocietyController {

	public SocietyController() {
		
	}
	
	@GetMapping("society.do")
	public String natureMain() {
		return "society/societyMain";
	}
	
	@GetMapping("{number}.do")
	public String handleNature(@PathVariable("number") int number) {
		String viewName = "society/";
	
		switch(number) {
		case 1:
			viewName += "fire";
			break;
		case 2:
			viewName += "forestFires";
			break;
		case 3:
			viewName += "collapse";
			break;
		case 4:
			viewName += "explosion";
			break;
		case 5:
			viewName += "trafficAccident";
			break;
		case 6:
			viewName += "electricGas";
			break;
		case 7:
			viewName += "railway";
			break;
		case 8:
			viewName += "guideWire";
			break;
		case 9:
			viewName += "shipAccident";
			break;
		case 10:
			viewName += "edibleWater";
			break;			
		case 11:
			viewName += "nuclear";
			break;				
		case 12:
			viewName += "commonDisaster";
			break;			
		case 13:
			viewName += "largeWaterPollution";
			break;			
		case 14:
			viewName += "livestockDisease";
			break;			
		case 15:
			viewName += "damCollapse";
			break;			
		case 16:
			viewName += "powerShortage";
			break;
		case 17:
			viewName += "preventionInfectious";
			break;			
		case 18:
			viewName += "marinePollution";
			break;		
		case 19:
			viewName += "chemicals";
			break;		
		case 20:
			viewName += "aircraftAccident";
			break;	
		case 21:
			viewName += "artificialSpace";
			break;	
		case 22:
			viewName += "redTide";
			break;				
		default:
			viewName += "unknown";
			break;
		}
		return viewName;
	}


}