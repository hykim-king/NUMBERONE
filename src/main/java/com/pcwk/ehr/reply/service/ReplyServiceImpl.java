package com.pcwk.ehr.reply.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.reply.domain.Reply;
import com.pcwk.ehr.cmn.DTO;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.code.domain.Code;
import com.pcwk.ehr.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService, PLog {

	@Autowired
	ReplyMapper replyMapper;
	
	public ReplyServiceImpl() {
		log.debug("┌──────────────────────────────────────────┐");
		log.debug("│ ReplyServiceImpl()                       │");
		log.debug("└──────────────────────────────────────────┘");
	}		
	
	@Override
	public int doSave(Reply inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Reply doSelectOne(Reply inVO) throws SQLException {
		
		Reply outVO = replyMapper.doSelectOne(inVO);
		log.debug(outVO);
		
		return outVO;
	}

	@Override
	public List<Reply> doRetrieve(DTO search) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int doUpdate(Reply inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int doDelete(Reply inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Code> doRetrieveIn(List<String> codeList) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}



}