package com.pcwk.ehr.mapper;

import java.sql.SQLException;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.member.domain.Member;


@Mapper
public interface MemberMapper extends WorkDiv<Member> {
	/**
     * ID 중복 체크
     * @param memberId
     * @return 1 (사용 불가) / 0 (사용 가능)
     */
    int idDuplicateCheck(String memberId) throws SQLException;

    
    int nicknameDuplicateCheck(String nickname) throws SQLException;
    
    int doSave(Member member) throws SQLException;

    Member doSelectOne(String memberId) throws SQLException;

    int passwordCheck(Member member);
    
    int idCheck(Member member);
	
	Member login(Member member);


    int getCount() throws SQLException;

    int deleteAll() throws SQLException;

   

    List<Member> doRetrieve(Search search) throws SQLException;
    
    
    int multipleSave() throws SQLException;
    int doUpdate(Member user) throws SQLException;


	Member findMemberId(Member member);


	  int locCodeUpdate(Member member);


	Member getMemberById(String memberId);







	


	






	
}
