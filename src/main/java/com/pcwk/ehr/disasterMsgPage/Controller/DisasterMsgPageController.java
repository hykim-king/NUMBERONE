package com.pcwk.ehr.disasterMsgPage.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.disasterMsg.service.DisasterMsgService;

@Controller
@RequestMapping("disasterMsg")
public class DisasterMsgPageController implements PLog{
	
	@Autowired
	   DisasterMsgService disasterMsgService;
	
		public DisasterMsgPageController() {
			log.debug("┌──────────────────────────────────────────┐");
		    log.debug("│DisasterMsgPageController ");                                 
		    log.debug("└──────────────────────────────────────────┘");
	}

		@GetMapping("/search.do")
	   public String header() {
	      String viewName = "disasterMessage/disasterMessage";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }

}
