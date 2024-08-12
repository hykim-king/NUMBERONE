package com.pcwk.ehr.mapper;


import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.reply.domain.Reply;

@Mapper
public interface ReplyMapper extends WorkDiv<Reply> {
    
	/**
	 * 전체 조회
	 * @param search
	 * @return
	 * @throws SQLException
	 */
	
	int deleteAll() throws SQLException;
	
	int getSequence() throws SQLException;

    /**
     * 댓글 수정
     * @param inVO
     * @return 수정한 댓글
     * @throws SQLException
     */
  
    List<Reply> doRetrieve(Search search) throws SQLException;
    
    /**
     * 테스트용 전체 데이터 삭제
     * @return 삭제된 데이터 수정
     * @throws SQLException
     */

} 