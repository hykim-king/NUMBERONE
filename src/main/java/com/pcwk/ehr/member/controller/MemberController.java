package com.pcwk.ehr.member.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.pcwk.ehr.cmn.Message;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.location.domain.Location;
import com.pcwk.ehr.location.service.LocationService;
import com.pcwk.ehr.login.domain.Login;
import com.pcwk.ehr.login.service.LoginService;
import com.pcwk.ehr.member.domain.Member;

@Controller
@RequestMapping("member")

public class MemberController implements PLog {
	@Autowired
	LoginService loginService;
	
   public MemberController() {
      log.debug("┌──────────────────────────────────────────┐");
      log.debug("                 𝑪𝒐𝒏𝒕𝒓𝒐𝒍𝒍𝒆𝒓                                                 ");
      log.debug("└──────────────────────────────────────────┘");   
   }
   
   
   @GetMapping("signInUp.do")
   public String login() {
      String viewName = "member/signInUp";
      
      log.debug("┌──────────────────────────────────────────┐");
      log.debug("│ viewName:"+viewName);                                 
      log.debug("└──────────────────────────────────────────┘");
      
      return viewName;
   }
   
   
   @RequestMapping(value="/loginInfo.do"
			,method = RequestMethod.POST
			, produces = "text/plain;charset=UTF-8")
   @ResponseBody
	public String loginInfo(Login inVO, HttpSession  httpSession ) throws SQLException {
		String  jsonString = "";
		
		log.debug("1 param:" + inVO);	
		int checkCount = loginService.idPasswordCheck(inVO);
		
		String loginMessage = "";
		if(10 == checkCount) {//아이디를 확인 하세요.
			loginMessage = "아이디를 확인 해 주세요.";
		}else if(20 == checkCount) {//비번을 확인 하세요.
			loginMessage = "비밀번호를 확인 해 주세요.";
		}else if(30 == checkCount) {
			loginMessage = "아이디 비번 일치!!";
			
			//회원정보 
			Member member = loginService.login(inVO);
			if(null !=member) {
				httpSession.setAttribute("member", member);
			}
		}
		
		Message   message = new Message(checkCount,loginMessage);
		
		jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(message);
		log.debug("3.jsonString:" + jsonString);
		
		
		return jsonString;
	}
   
   public String doSave(Member member) throws SQLException {
	    // 회원가입 처리 로직
	    String jsonString = "";
	    
	    // 서비스 호출하여 회원가입 처리
	    boolean isSuccess = loginService.doSave(member); // signUp 메서드가 로그인 서비스에 정의되어 있어야 합니다.
	    String signUpMessage = isSuccess ? "회원가입 완료!" : "회원가입 실패!";
	    
	    Message message = new Message(isSuccess ? 0 : 1, signUpMessage);
	    jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(message);
	    log.debug("signUp jsonString:" + jsonString);
	    
	    return jsonString;
	}
   

   @GetMapping("findIdPw.do")
   public String findId() {
      String viewName = "member/findIdPw";
      
      log.debug("┌──────────────────────────────────────────┐");
      log.debug("│ viewName:"+viewName);                                 
      log.debug("└──────────────────────────────────────────┘");
      
      return viewName;
   }

}
