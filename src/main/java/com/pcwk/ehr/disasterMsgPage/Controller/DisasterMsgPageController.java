package com.pcwk.ehr.disasterMsgPage.Controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.disasterMsg.domain.DisasterMsg;
import com.pcwk.ehr.disasterMsg.service.DisasterMsgService;
import com.pcwk.ehr.news.domain.News;

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

		@GetMapping("/disasterMsg")
	   public String header() {
	      String viewName = "disasterMessage/disasterMessage";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
		@GetMapping("/disasterMsg/{seq}")
	    public String getMessageDetail(@PathVariable int seq, Model model) {
	        // seq에 해당하는 뉴스 찾기
			log.debug(seq);
			DisasterMsg inVO =new DisasterMsg();
			inVO.setMessageSeq(seq);
			DisasterMsg msg=null;
			try {
				msg = disasterMsgService.doSelectOneWithDetails(inVO);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	        if (msg != null) {
	            model.addAttribute("msg", msg);
	            
	        } else {
	            
	        }
	        return "disasterMessage/msgDetail"; // JSP 페이지 이름
	    }

}
