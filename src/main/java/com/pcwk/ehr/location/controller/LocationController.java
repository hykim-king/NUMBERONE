package com.pcwk.ehr.location.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.code.service.CodeService;
import com.pcwk.ehr.location.domain.Location;
import com.pcwk.ehr.location.service.LocationService;

@Controller
@RequestMapping("location")
public class LocationController implements PLog {

	@Autowired
	LocationService locationService;

	@Autowired
	CodeService codeService;

	public LocationController() {
		log.debug("┌───────────────────────────────────────┐");
		log.debug("│ locationController()                  │");
		log.debug("└───────────────────────────────────────┘");
	}
	
	@GetMapping("locationMain")
	public String locationMain() {
		return "location/shelterList";
	}
	
	// 동기 통신
	@RequestMapping(value = "/location/{number}", method = RequestMethod.GET)
	public String locationRetrieve(@PathVariable("number") int number) throws SQLException {
		log.debug("┌──────────────────────────────────────────────────┐");
		log.debug("│ sidoRetrieve()                                   │");
		log.debug("└──────────────────────────────────────────────────┘");
		
		String viewName = "location/";
		
		switch(number) {
		case 1:
			viewName += "civilDefenseShelter";
			break;
		case 2:
			viewName += "waterSupplyShelter";
			break;
		case 3:
			viewName += "earthquakeShelter";
			break;
		case 4:
			viewName += "tsunamiEmergencyShelter";
			break;
		case 5:
			viewName += "earthquake_ResistantTemporaryHousing";
			break;
		case 6:
			viewName += "disasterVictimTemporaryHousing";
			break;
		case 7:
			viewName += "chemicalIncidentShelter";
			break;
		case 8:
			viewName += "heatwaveShelter";
			break;
		case 9:
			viewName += "dustShelter";
			break;
		case 10:
			viewName += "coldwaveShelter";
			break;	
		default:
			viewName += "unknown";
			break;
		}	
		return viewName;
	}

	// 시군구 비동기 통신
	@RequestMapping(value = "/location_sigungu", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String sigunguRetrieve(Long locCode) throws SQLException {
		log.debug("┌──────────────────────────────────────────────────┐");
		log.debug("│ sigunguRetrieve()                                │");
		log.debug("└──────────────────────────────────────────────────┘");

		String jsonString = "";
		Location inVO = new Location();
		inVO.setLocCode(locCode);
		List<Location> sigunguSearch = this.locationService.sigunguRetrieve(inVO);

		jsonString = new Gson().toJson(sigunguSearch);

		return jsonString;
	}

	// 읍면동 비동기 통신
	@RequestMapping(value = "/location_eupmyeondong", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String eupmyeondongRetrieve(Long locCode) throws SQLException {
		log.debug("┌──────────────────────────────────────────────────┐");
		log.debug("│ eupmyeondongRetrieve()                           │");
		log.debug("└──────────────────────────────────────────────────┘");

		String jsonString = "";
		Location inVO2 = new Location();
		inVO2.setLocCode(locCode);
		List<Location> eupmyeondongSearch = this.locationService.eupmyeondongRetrieve(inVO2);

		jsonString = new Gson().toJson(eupmyeondongSearch);

		return jsonString;

	}

	// 시도 비동기 통신
	@RequestMapping(value = "/location", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String sido(Long locCode) throws SQLException {
		log.debug("┌──────────────────────────────────┐");
		log.debug("│ sido()                           │");
		log.debug("└──────────────────────────────────┘");

		String jsonString = "";
		Location sido = new Location();
		sido.setLocCode(locCode);
		List<Location> sidoName = this.locationService.sidoRetrieve();

		jsonString = new Gson().toJson(sidoName);

		return jsonString;
	}

	@RequestMapping(value = "/locToAddress", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String locToAddress(Long locCode) throws SQLException {
		log.debug("┌──────────────────────────────────────────────────┐");
		log.debug("│ locToAddress()                                   │");
		log.debug("└──────────────────────────────────────────────────┘");
        log.debug("locCode:"+locCode);
		String jsonString = "";
		Location inVO = new Location();
		inVO.setLocCode(locCode);
		String result = this.locationService.addressFromLocCode(inVO);

		jsonString = new Gson().toJson(result);

		return jsonString;
	}

}
