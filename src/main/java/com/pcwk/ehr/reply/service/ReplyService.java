package com.pcwk.ehr.reply.service;

import com.pcwk.ehr.reply.domain.Reply;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.code.domain.Code;

public interface ReplyService extends WorkDiv<Reply> {
	
	public List<Code> doRetrieveIn(List<String> codeList) throws SQLException;
	
}
