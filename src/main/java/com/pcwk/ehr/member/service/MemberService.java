package com.pcwk.ehr.member.service;

import java.sql.SQLException;
import com.pcwk.ehr.member.domain.Member;

public interface MemberService {

    boolean doSave(Member member);
    Member login(Member inVO) throws SQLException;  
    boolean checkNickname(String nickname);
    boolean checkUserId(String memberId);
	int idPasswordCheck(Member member) throws SQLException;

	Member getAll(Member member);

	Member doSelectOne(String memberId);


    
    
}