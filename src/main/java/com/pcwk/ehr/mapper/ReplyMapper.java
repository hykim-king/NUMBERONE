package com.pcwk.ehr.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.reply.domain.Reply;

@Mapper
public interface ReplyMapper extends WorkDiv<Reply> {
    
	int getLatestReplyNo() throws SQLException;
	/**
     * 댓글 등록
     * @param inVO
     * @return 등록한 댓글
     * @throws SQLException
     */
    int doSave(Reply inVO) throws SQLException;
    
    /**
     * 댓글 등록
     * @param inVO
     * @return 등록한 댓글
     * @throws SQLException
     */
    int doUpdate(Reply inVO) throws SQLException;
	
    /**
     * 댓글 수정
     * @param inVO
     * @return 수정한 댓글
     * @throws SQLException
     */
    //int deleteByBoardNo(Reply inVO) throws SQLException;
    
    /**
     * 특정 게시물의 댓글 목록 조회
     * @param inVO
     * @return 댓글 목록
     * @throws SQLException
     */
    //List<Reply> getRepliesByBoardNo(Reply inVO) throws SQLException;
    
    /**
     * 최신 REPLY_NO 조회
     * @return 최신 REPLY_NO
     * @throws SQLException
     */
    List<Reply> doRetrieve(Search search) throws SQLException;
    
    /**
     * 테스트용 전체 데이터 삭제
     * @return 삭제된 데이터 수정
     * @throws SQLException
     */
    int deleteAll() throws SQLException;
} 