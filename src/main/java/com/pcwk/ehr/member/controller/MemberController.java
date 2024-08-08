package com.pcwk.ehr.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pcwk.ehr.cmn.PLog;

@Controller
@RequestMapping("member")

public class MemberController implements PLog{
	

	   @GetMapping("/signInUp.do")
	   public String signInUp() {
	      String viewName = "member/signInUp";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	   
	   @GetMapping("/findIdPw.do")
	   public String findIdPw() {
	      String viewName = "member/findIdPw";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	   
}
