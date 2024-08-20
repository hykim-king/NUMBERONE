package com.pcwk.ehr.news.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.location.domain.Location;
import com.pcwk.ehr.news.domain.News;
import com.pcwk.ehr.news.service.NewsService;
import com.pcwk.ehr.statisticsCondition.domain.StatisticsCondition;

@Controller
public class NewsController implements PLog{
	
	@Autowired
	NewsService newsService;
	
	
	
	@GetMapping("/news")
	   public String newsRetrieve() {
	      String viewName = "news/News";
	      
	      log.debug("┌──────────────────────────────────────────┐");
	      log.debug("│ viewName:"+viewName);                                 
	      log.debug("└──────────────────────────────────────────┘");
	      
	      return viewName;
	   }
	
	@GetMapping("/news/{seq}")
    public String getNewsDetail(@PathVariable int seq, Model model) {
        // seq에 해당하는 뉴스 찾기
		News inVO =new News();
		inVO.setNewsSeq(seq);
        News news=null;
		try {
			news = newsService.doSelectOne(inVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        if (news != null) {
            model.addAttribute("news", news);
            
        } else {
            
        }
        return "news/NewsDetail"; // JSP 페이지 이름
    }
	
	@RequestMapping(value = "/news/doRetrieve", 
			       method = RequestMethod.POST, 
			       produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String newsRetrieve(@RequestBody StatisticsCondition condition) throws SQLException {
		log.debug("┌──────────────────────────────────────────────────┐");
		log.debug("│ newsRetrieve()                                   │");
		log.debug("└──────────────────────────────────────────────────┘");

		String jsonString = "";
		List<News> newsList = newsService.doRetrieve(condition);

		jsonString = new Gson().toJson(newsList);

		return jsonString;
	}

}
