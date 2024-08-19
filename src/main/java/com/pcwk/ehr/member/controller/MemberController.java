package com.pcwk.ehr.member.controller;

import java.sql.SQLException;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.google.gson.GsonBuilder;
import com.pcwk.ehr.cmn.Message;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.member.domain.Member;
import com.pcwk.ehr.member.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController implements PLog {
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

    
    
    @RequestMapping(value="/login.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String login(Member member, HttpSession httpSession) throws SQLException {
        String jsonString = "";

        log.debug("Received memberId: " + member.getMemberId());
        log.debug("Received password: " + member.getPassword());

        int checkCount = memberService.idPasswordCheck(member);

        String loginMessage = "";
        if (10 == checkCount) { // 아이디를 확인하세요.
            loginMessage = "아이디를 확인하세요.";
        } else if (20 == checkCount) { // 비밀번호를 확인하세요.
            loginMessage = "비밀번호를 확인하세요.";
        } else if (30 == checkCount) { // 아이디/비밀번호 일치!
            loginMessage = "아이디/비밀번호 일치!";

            // 로그인 성공 시 전체 회원 정보를 가져옴
            Member memberInfoAll = memberService.doSelectOne(member.getMemberId());

            if (memberInfoAll != null) {
                
                httpSession.setAttribute("member", memberInfoAll);
            }
        }

        Message message = new Message(checkCount, loginMessage);
        jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(message);
        log.debug("3.jsonString:" + jsonString);

        return jsonString;
    }
    

    
    
    @RequestMapping(value = "/logout.do", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String logout(HttpSession httpSession) {
		String jsonString = "";
		log.debug("logout()");
		
		String loginOutMessage = "^^";
		int    flag = 0;
		if( null != httpSession.getAttribute("member")) {
			httpSession.invalidate();   //세션무효화하기
			
			loginOutMessage = "로그아웃 되었습니다.";
			flag = 1;
		}
		
		Message message=new Message(flag, loginOutMessage);
		jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(message);
		log.debug("3.jsonString:" + jsonString);		
		
		return jsonString;
	}

    
    
    @RequestMapping(value="/doSave.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String doSave(@RequestBody Member member) throws SQLException {
        String jsonString = "";
        log.debug("doSave()");
        log.debug("┌──────────────────────────────────────────┐");
        log.debug(member.getName());
        log.debug(member.getNickname());
        log.debug(member.getMemberId());
        log.debug(member.getPassword());
        log.debug(member.getLocCode());
        log.debug(member.getEmail());
        log.debug("└──────────────────────────────────────────┘");
        
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

        boolean isDuplicate = memberService.checkNickname(nickname);
        String message = isDuplicate ? "중복된 닉네임입니다." : "사용 가능한 닉네임입니다.";
        
        Message responseMessage = new Message(isDuplicate ? 1 : 0, message);
        return new GsonBuilder().setPrettyPrinting().create().toJson(responseMessage);
    }

    @GetMapping("idDuplicateCheck.do")
    @ResponseBody
    public String idDuplicateCheck(@RequestParam("memberId") String memberId) throws SQLException {
        log.debug("아이디 중복 체크 요청: " + memberId);

        boolean isDuplicate = memberService.checkUserId(memberId);
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
    
    @GetMapping("locCodeUpdate.do")
    public String locCodeUpdate() {
        String viewName = "member/locCodeUpdate";
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ viewName:"+viewName);                                 
        log.debug("└──────────────────────────────────────────┘");
        return viewName;
    }
    
}
