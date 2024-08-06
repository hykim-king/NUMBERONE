package com.pcwk.ehr.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pcwk.ehr.cmn.PLog;

@Controller
@RequestMapping("main")
public class mainController implements PLog{
	   
	
		@GetMapping("/header.do")
	   public String header() {
	      String viewName = "main/header";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	   
	   @GetMapping("/footer.do")
	   public String footer() {
	      String viewName = "main/footer";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	   
	   @GetMapping("/index.do")
	   public String index() {
	      String viewName = "main/index";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	   
}
