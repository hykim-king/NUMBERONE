package com.pcwk.ehr.member.controller;

import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.pcwk.ehr.cmn.Message;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.location.domain.Location;
import com.pcwk.ehr.location.service.LocationService;
import com.pcwk.ehr.member.domain.Member;
import com.pcwk.ehr.member.service.MemberService;

@Controller
@RequestMapping("member")

public class MemberController<Login> implements PLog {
	@Autowired
	MemberService memberService;
	
   public MemberController() {
      log.debug("┌──────────────────────────────────────────┐");
      log.debug("                 𝑪𝒐𝒏𝒕𝒓𝒐𝒍𝒍𝒆𝒓                                                 ");
      log.debug("└──────────────────────────────────────────┘");   
   }
   @GetMapping("signInUp.do")
   public String signInUp() {
      String viewName = "member/signInUp";
      
      log.debug("┌──────────────────────────────────────────┐");
      log.debug("│ viewName:"+viewName);                                 
      log.debug("└──────────────────────────────────────────┘");
      
      return viewName;
   }
   
   
   @RequestMapping(value="/login.do"
			,method = RequestMethod.POST
			, produces = "text/plain;charset=UTF-8")
   @ResponseBody
	public String login(Member inVO, HttpSession  httpSession ) throws SQLException {
		String  jsonString = "";
		
		log.debug("1 param:" + inVO);	
		int checkCount = memberService.idPasswordCheck(inVO);
		
		String loginMessage = "";
		if(10 == checkCount) {//아이디를 확인 하세요.
			loginMessage = "아이디를 확인 해 주세요.";
		}else if(20 == checkCount) {//비번을 확인 하세요.
			loginMessage = "비밀번호를 확인 해 주세요.";
		}else if(30 == checkCount) {
			loginMessage = "아이디 비번 일치!!";
			
			//회원정보 
			Member member = memberService.login(inVO);
			if(null !=member) {
				httpSession.setAttribute("member", member);
			}
		}
		
		Message   message = new Message(checkCount,loginMessage);
		
		jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(message);
		log.debug("3.jsonString:" + jsonString);
		
		
		return jsonString;
	}
   
   @RequestMapping(value="/doSave.do"
			,method = RequestMethod.POST
			, produces = "text/plain;charset=UTF-8")
   @ResponseBody
   public String doSave(@RequestBody Member member) throws SQLException {
	    // 회원가입 처리 로직
	    String jsonString = "";
	    log.debug("┌──────────────────────────────────────────┐");
	    log.debug(member.getName());
	    log.debug(member.getNickname());
	    log.debug(member.getMemberId());
	    log.debug(member.getPassword());
	    log.debug(member.getLocCode());
	    log.debug("└──────────────────────────────────────────┘");
	    
	    
	    // 서비스 호출하여 회원가입 처리
	    boolean isSuccess = memberService.doSave(member); 
	    String signUpMessage = isSuccess ? "회원가입 완료!" : "회원가입 실패!";
	    
	    Message message = new Message(isSuccess ? 0 : 1, signUpMessage);
	    jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(message);
	    log.debug("signUp jsonString:" + jsonString);
	    
	    return jsonString;
	}


   
   
   @GetMapping("nicknameDuplicateCheck.do")
   @ResponseBody
   public String nicknameDuplicateCheck(@RequestParam("nickname") String nickname) throws SQLException {
       log.debug("닉네임 중복 체크 요청: " + nickname);

       // 닉네임 중복 체크 로직
       boolean isDuplicate = memberService.checkNickname(nickname);
       String message = isDuplicate ? "중복된 닉네임입니다." : "사용 가능한 닉네임입니다.";
       
       Message responseMessage = new Message(isDuplicate ? 1 : 0, message);
       return new GsonBuilder().setPrettyPrinting().create().toJson(responseMessage);
   }

   @GetMapping("idDuplicateCheck.do")
   @ResponseBody
   public String idDuplicateCheck(@RequestParam("userId") String userId) throws SQLException {
       log.debug("아이디 중복 체크 요청: " + userId);

       // 아이디 중복 체크 로직
       boolean isDuplicate = memberService.checkUserId(userId);
       String message = isDuplicate ? "중복된 아이디입니다." : "사용 가능한 아이디입니다.";
       
       Message responseMessage = new Message(isDuplicate ? 1 : 0, message);
       return new GsonBuilder().setPrettyPrinting().create().toJson(responseMessage);
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
