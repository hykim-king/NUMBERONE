package com.pcwk.ehr.video.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pcwk.ehr.cmn.PLog;

@Controller
@RequestMapping("video")
public class VideoController implements PLog {
	
	public VideoController() {
		log.debug("┌──────────────────────────────────────────┐");
		log.debug("│ VideoController()                        │");
		log.debug("└──────────────────────────────────────────┘");
	}
	
	@GetMapping("videoView.do")
	   public String videoView() {
	      String viewName = "video/videoView";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video01.do")
	   public String video01() {
	      String viewName = "video/video01";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video02.do")
	   public String video02() {
	      String viewName = "video/video02";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video03.do")
	   public String video03() {
	      String viewName = "video/video03";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video04.do")
	   public String video04() {
	      String viewName = "video/video04";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video05.do")
	   public String video05() {
	      String viewName = "video/video05";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video06.do")
	   public String video06() {
	      String viewName = "video/video06";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video07.do")
	   public String video07() {
	      String viewName = "video/video07";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video08.do")
	   public String video08() {
	      String viewName = "video/video08";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video09.do")
	   public String video09() {
	      String viewName = "video/video09";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video10.do")
	   public String video10() {
	      String viewName = "video/video10";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video11.do")
	   public String video11() {
	      String viewName = "video/video11";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video12.do")
	   public String video12() {
	      String viewName = "video/video12";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video13.do")
	   public String video13() {
	      String viewName = "video/video13";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video14.do")
	   public String video14() {
	      String viewName = "video/video14";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video15.do")
	   public String video15() {
	      String viewName = "video/video15";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	@GetMapping("video16.do")
	   public String video16() {
	      String viewName = "video/video16";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video17.do")
	   public String video17() {
	      String viewName = "video/video17";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("video18.do")
	   public String video18() {
	      String viewName = "video/video18";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
}
