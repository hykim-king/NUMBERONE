package com.pcwk.ehr.disasterMsg.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.pcwk.ehr.disasterMsg.service.DisasterMsgService;
import com.pcwk.ehr.statisticsCondition.domain.StatisticsCondition;

@RestController
public class DisasterMsgController {
	
	@Autowired
	DisasterMsgService disasterMsgService;
	
	@GetMapping(value ="/statistics/1")
	public Map<String,Integer> disasterStaticsUpward(@RequestParam StatisticsCondition condition){
		return null;
	}

}
