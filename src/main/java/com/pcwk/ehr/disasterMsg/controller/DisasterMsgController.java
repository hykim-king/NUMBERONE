package com.pcwk.ehr.disasterMsg.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.disasterMsg.domain.DisasterMsg;
import com.pcwk.ehr.disasterMsg.service.DisasterMsgService;
import com.pcwk.ehr.statisticsCondition.domain.StatisticsCondition;

@RestController
public class DisasterMsgController implements PLog{
	
	  

	public DisasterMsgController() {
		log.debug("┌──────────────────────────────────────────┐");
	    log.debug("          disasterMsgController             ");
	    log.debug("└──────────────────────────────────────────┘");
	}

	@Autowired
	DisasterMsgService disasterMsgService;

	@Autowired
	Gson gson;
    
	@PostMapping(value = "/statistics/1")
	public ResponseEntity<Map<String, Integer>> disasterStaticsUpward(@RequestBody StatisticsCondition condition) {
		log.debug("┌──────────────────────────────────────────┐");
	    log.debug("          disasterStaticsUpward             ");
	    log.debug("└──────────────────────────────────────────┘");
		Map<String, Integer> resultMap = null;
		StatisticsCondition reqCondtion = condition;
        log.debug(reqCondtion);
		try {
			resultMap = disasterMsgService.disasterTypeStatisticsUpward(reqCondtion);
		} catch (SQLException e) {
			
			e.printStackTrace();
			return ResponseEntity.notFound().build();
		}
		if (null == resultMap) {
			return ResponseEntity.notFound().build();

		} else {
			return ResponseEntity.ok().body(resultMap);
		}

	}

	@PostMapping(value = "/statistics/2")
	public ResponseEntity<Map<String, Integer>> disasterStaticsDownward(@RequestBody StatisticsCondition condition) {
		Map<String, Integer> resultMap = null;
		StatisticsCondition reqCondtion = condition;

		try {
			resultMap = disasterMsgService.disasterTypeStatisticsDownward(reqCondtion);
		} catch (SQLException e) {
			e.printStackTrace();
			return ResponseEntity.notFound().build();
		}
		if (null == resultMap) {
			return ResponseEntity.notFound().build();

		} else {
			return ResponseEntity.ok().body(resultMap);
		}

	}
	
	@PostMapping(value = "/statistics/3")
	public ResponseEntity<Map<String, Integer>> disasterStaticsAll(@RequestBody StatisticsCondition condition) {
		log.debug("┌──────────────────────────────────────────┐");
	    log.debug("          disasterStaticsUpward             ");
	    log.debug("└──────────────────────────────────────────┘");
		Map<String, Integer> resultMap = null;
		StatisticsCondition reqCondtion = condition;
        log.debug(reqCondtion);
		try {
			resultMap = disasterMsgService.disasterTypeStatisticsAll(reqCondtion);
		} catch (SQLException e) {
			
			e.printStackTrace();
			return ResponseEntity.notFound().build();
		}
		if (null == resultMap) {
			return ResponseEntity.notFound().build();

		} else {
			return ResponseEntity.ok().body(resultMap);
		}

	}
	
	@PostMapping(value = "/statistics/4")
	public ResponseEntity<Map<String, Integer>> disasterStaticsBySido(@RequestBody StatisticsCondition condition) {
		log.debug("┌──────────────────────────────────────────┐");
	    log.debug("          disasterStaticsBySido             ");
	    log.debug("└──────────────────────────────────────────┘");
		Map<String, Integer> resultMap = null;
		StatisticsCondition reqCondtion = condition;
        log.debug(reqCondtion);
		try {
			resultMap = disasterMsgService.disasterTypeStatisticsBySido(reqCondtion);
		} catch (SQLException e) {
			
			e.printStackTrace();
			return ResponseEntity.notFound().build();
		}
		if (null == resultMap) {
			return ResponseEntity.notFound().build();

		} else {
			return ResponseEntity.ok().body(resultMap);
		}

	}
	
	@GetMapping(value = "/messages")
	public ResponseEntity<List<DisasterMsg>> disasterMsgRetrieve(@RequestParam long locCode,int pageNo){
		List<DisasterMsg> list = null;
		long code = locCode;
		Search search = new Search();
		if(0!= locCode) {
			search.setPageNo(1);
			search.setPageSize(5);
			search.setSearchDiv("10");
			search.setSearchWord(String.valueOf(code));
		}else {
			search.setPageNo(pageNo);
			search.setPageSize(10);
		}
		try {
			list =disasterMsgService.doRetrieve(search);
		} catch (SQLException e) { 
			e.printStackTrace();
			return ResponseEntity.notFound().build();
		}
		return ResponseEntity.ok().body(list);
	}

}
