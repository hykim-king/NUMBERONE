package com.pcwk.ehr.mapper;


import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;


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
	List<Reply> doRetrieve(List search) throws SQLException;
	
	int deleteAll() throws SQLException;
	
	
	
} 