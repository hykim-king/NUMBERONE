package com.pcwk.ehr.shelter.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping(value = "/shelter.do"
			,method = RequestMethod.GET
			,produces = "text/plain;charset=UTF-8")
	public String doRetrieve(Location location) throws SQLException {
		log.debug("┌────────────────────────────────────────┐");
		log.debug("│ doRetrieve()                           │");
		log.debug("└────────────────────────────────────────┘");
		
		String jsonString = "";
		
		List<Shelter> shelterSearch = this.shelterService.doRetrieve(location);
		
		jsonString = new Gson().toJson(shelterSearch);
		
		return jsonString;
	}
	
}
