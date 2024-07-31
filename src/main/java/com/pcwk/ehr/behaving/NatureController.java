package com.pcwk.ehr.behaving;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("nature")
public class NatureController {

	public NatureController() {
		
	}
	
	@GetMapping("natureMain.do")
	public String natureMain() {
		return "nature/natureMain";
	}
	
	@GetMapping("{number}.do")
	public String handleNature(@PathVariable("number") int number) {
		String viewName = "nature/";
	
		switch(number) {
		case 1:
			viewName += "flooding";
			break;
		case 2:
			viewName += "typhoon";
			break;
		case 3:
			viewName += "heavyRain";
			break;
		case 4:
			viewName += "lightning";
			break;
		case 5:
			viewName += "strongWind";
			break;
		case 6:
			viewName += "waves";
			break;
		case 7:
			viewName += "heavySnow";
			break;
		case 8:
			viewName += "coldWave";
			break;
		case 9:
			viewName += "heatWave";
			break;
		case 10:
			viewName += "yellowDust";
			break;			
		case 11:
			viewName += "earthQuake";
			break;				
		case 12:
			viewName += "tsunami";
			break;			
		case 13:
			viewName += "earthTsunami";
			break;			
		case 14:
			viewName += "volcano";
			break;			
		case 15:
			viewName += "drought";
			break;			
		case 16:
			viewName += "flood";
			break;
		case 17:
			viewName += "tide";
			break;			
		case 18:
			viewName += "landslide";
			break;		
		case 19:
			viewName += "spaceObject";
			break;		
		case 20:
			viewName += "spaceRadio";
			break;	
		case 21:
			viewName += "greenTide";
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
