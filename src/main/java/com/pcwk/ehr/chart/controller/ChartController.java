package com.pcwk.ehr.chart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pcwk.ehr.cmn.PLog;

@Controller
@RequestMapping("chart")

public class ChartController implements PLog {
   
   public ChartController() {
      log.debug("┌──────────────────────────────────────────┐");
      log.debug("│ 𝑪𝒉𝒂𝒓𝒕𝑪𝒐𝒏𝒕𝒓𝒐𝒍𝒍𝒆𝒓                                                                         │");
      log.debug("└──────────────────────────────────────────┘");   
   }
   
   
   
   
   @GetMapping("dataChart.do")
   public String dataChart() {
      String viewName = "chart/dataChart";
      
      log.debug("┌──────────────────────────────────────────┐");
      log.debug("│ viewName:"+viewName);                                 
      log.debug("└──────────────────────────────────────────┘");
      
      return viewName;
   }
   
   
   @GetMapping("dataChartMap.do")
   public String dataChart02() {
      String viewName = "chart/dataChartMap";
      
      log.debug("┌──────────────────────────────────────────┐");
      log.debug("│ viewName:"+viewName);                                 
      log.debug("└──────────────────────────────────────────┘");
      
      return viewName;
   }
   

}
