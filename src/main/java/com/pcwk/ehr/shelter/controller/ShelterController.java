package com.pcwk.ehr.shelter.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.location.domain.Location;
import com.pcwk.ehr.shelter.domain.Shelter;
import com.pcwk.ehr.shelter.service.ShelterService;

@Controller
@RequestMapping("shelter")
public class ShelterController implements PLog {
	
	@Autowired
	ShelterService shelterService;
	
	public ShelterController() {
		log.debug("┌───────────────────────────────────────┐");
		log.debug("│ ShelterController()                   │");
		log.debug("└───────────────────────────────────────┘");
	}
	
	@RequestMapping(value = "/shelter"
			,method = RequestMethod.GET
			,produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String doRetrieve(Shelter shelter) throws SQLException {
		log.debug("┌────────────────────────────────────────┐");
		log.debug("│ doRetrieve()                           │");
		log.debug("└────────────────────────────────────────┘");
		log.debug("======================================");
		log.debug("shelter:"+ shelter);
		log.debug("======================================");
		String jsonString = "";
		
		List<Shelter> shelterSearch = this.shelterService.doRetrieve(shelter);
		log.debug("======================================");
		log.debug("======================================");
		log.debug("======================================");
		log.debug("shelterSearch"+ shelterSearch);
		log.debug("======================================");
		log.debug("======================================");
		log.debug("======================================");
		
		jsonString = new Gson().toJson(shelterSearch);
		
		if(shelterSearch.size() == 0) {
			List<Shelter> list = this.shelterService.shelterRetrieveWithParent(shelter);
			
			jsonString = new Gson().toJson(list);
		}
		
		return jsonString;
	}
	
	
	@RequestMapping(value = "/shelterNotParent"
			,method = RequestMethod.GET
			,produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String doRetrieveNotParent(Shelter shelter) throws SQLException {
		log.debug("┌────────────────────────────────────────┐");
		log.debug("│ doRetrieve()                           │");
		log.debug("└────────────────────────────────────────┘");
		log.debug("======================================");
		log.debug("shelter:"+ shelter);
		log.debug("======================================");
		String jsonString = "";
		
		List<Shelter> shelterSearch = this.shelterService.doRetrieve(shelter);
		log.debug("======================================");
		log.debug("======================================");
		log.debug("======================================");
		log.debug("shelterSearch"+ shelterSearch);
		log.debug("======================================");
		log.debug("======================================");
		log.debug("======================================");
		
		jsonString = new Gson().toJson(shelterSearch);
		
		return jsonString;
	}
	
	@RequestMapping(value = "/shelter_map"
			,method = RequestMethod.GET)
	public String moveToMap(HttpServletRequest req, Model model) throws SQLException {
		log.debug("┌────────────────────────────────────────┐");
		log.debug("│ moveToMap()                            │");
		log.debug("└────────────────────────────────────────┘");
		
		String viewName = "openMap/openMap";
		
		double lat = Double.parseDouble((String)req.getParameter("lat"));
		log.debug("lat"+lat);
		double lon = Double.parseDouble((String)req.getParameter("lon"));
		log.debug("lon"+lon);
		String facilityName = req.getParameter("FacilityName");
		log.debug("facilityName"+facilityName);
		model.addAttribute("LAT",lat);
		model.addAttribute("LON",lon);
		model.addAttribute("FacilityName", facilityName);
		
		return viewName;
	}
	
	
	
}
