package com.pcwk.ehr.member.service;

import java.sql.SQLException;
import com.pcwk.ehr.member.domain.Member;

public interface MemberService {

    boolean doSave(Member member);
    Member login(Member inVO) throws SQLException;  
    boolean logout(String memberId) throws SQLException;
    boolean nicknameDuplicateCheck(String nickname);
    boolean idDuplicateCheck(String memberId);
	int idPasswordCheck(Member member) throws SQLException;
	Member findMemberId(Member member);
	Member getAll(Member member);

	Member doSelectOne(String memberId);


	 Member getMemberById(String memberId); // Assumes you have this method
	 Member locCodeUpdate(Member member);
	


    
    
}