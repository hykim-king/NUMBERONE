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

    /**
     * 다건 입력
     * @throws SQLException
     */
    int multipleSave() throws SQLException;

    /**
     * 전체 회원 조회
     * @return List<User>
     */
    List<Member> getAll();

    /**
     * 테스트용 전체 회원 수
     * @throws SQLException
     */
    int getCount() throws SQLException;

    /**
     * 테스트용 전체 데이터 삭제
     * @throws SQLException
     */
    int deleteAll() throws SQLException;

    /**
     * 단건 조회
     * @param memberId
     * @return member
     * @throws SQLException
     */
    Member doSelectOne(String memberId) throws SQLException;

    /**
     * 데이터 조회
     * @param search
     * @return List<Member>
     * @throws SQLException
     */
    List<Member> doRetrieve(Search search) throws SQLException;
    
    int doSave(Member user) throws SQLException;

    /**
     * 데이터 업데이트
     * @param member
     * @throws SQLException
     */
    int doUpdate(Member user) throws SQLException;
}
