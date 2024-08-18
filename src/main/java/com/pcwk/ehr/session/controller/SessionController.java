package com.pcwk.ehr.session.controller;

import javax.servlet.http.HttpSession;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.pcwk.ehr.member.domain.Member;


@Controller
@RequestMapping("session")
public class SessionController {
	

	
	@GetMapping("/api/session")
	public ResponseEntity<Member> getSessionData(HttpSession session) {
	    Member member = (Member) session.getAttribute("member");
	    if (member == null) {
	        System.out.println("No user in session.");
	        return ResponseEntity.ok(new Member()); // 빈 객체를 반환
	    } else {
	        System.out.println("User found in session: " + member);
	        return ResponseEntity.ok(member);
	    }
	}	
}	
