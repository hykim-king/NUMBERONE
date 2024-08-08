package com.pcwk.ehr.location.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
public class LocationController implements PLog{

	@Autowired
	LocationService locationService;
	
	@Autowired
	CodeService codeService;
	
	
	public LocationController() {
		log.debug("┌───────────────────────────────────────┐");
		log.debug("│ locationController()                  │");
		log.debug("└───────────────────────────────────────┘");
	}
	
//	@GetMapping("shelter.do")
//	public String test() {
//		String viewName = "shelter/shelter";
//		
//		return viewName;
//	}
	
	@RequestMapping(value ="/location.do"
				,method = RequestMethod.GET)
	public String sidoRetrieve(Model model, HttpServletRequest req) throws SQLException{
		log.debug("┌──────────────────────────────────────────────────┐");
		log.debug("│ sidoRetrieve()                                   │");
		log.debug("└──────────────────────────────────────────────────┘");
		
		String viewName = "location/location";
		
		String jsonString = "";
		
		List<Location> sidoSearch = this.locationService.sidoRetrieve();
		
		jsonString = new Gson().toJson(sidoSearch);
		model.addAttribute("sidoSearch",jsonString);
		
		return viewName;
	}
	
	@RequestMapping(value = "/location_sigungu.do"
			         ,method = RequestMethod.GET,
			         produces = "text/plain;charset=UTF-8")
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
	
	
	
}
