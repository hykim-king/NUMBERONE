package com.pcwk.ehr.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.disasterMsg.service.DisasterMsgService;

@Controller
@RequestMapping("main")
public class mainController implements PLog{
	   
	@Autowired
	   DisasterMsgService disasterMsgService;
	
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
	   public String index(Model model) {
	      String viewName = "main/index";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	   
}
