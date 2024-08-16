package com.pcwk.ehr.member.service;

import java.sql.SQLException;
import com.pcwk.ehr.member.domain.Member;

public interface MemberService {
    int idPasswordCheck(Member inVO) throws SQLException;
    boolean doSave(Member member);
    Member login(Member inVO) throws SQLException;  
    boolean checkNickname(String nickname);
    boolean checkUserId(String memberId);
    
    
}