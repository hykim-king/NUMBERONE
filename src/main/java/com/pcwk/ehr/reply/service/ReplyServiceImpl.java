package com.pcwk.ehr.reply.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.reply.domain.Reply;
import com.pcwk.ehr.cmn.DTO;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.mapper.ReplyMapper;

@Service("replyServiceImpl")
public class ReplyServiceImpl implements ReplyService, PLog {

	
	@Autowired
	ReplyMapper replyMapper;
	
	public ReplyServiceImpl() {}
	
	@Override
	public int doDelete(Reply inVO) throws SQLException {
		log.debug("1. param :"+inVO);
		return this.replyMapper.doDelete(inVO);
	}

	@Override
	public List<Reply> doRetrieve(DTO search) throws SQLException {
		log.debug("1. param :"+search);
		return this.replyMapper.doRetrieve(search);
	}

	@Override
	public int doUpdate(Reply inVO) throws SQLException {
		log.debug("1. param :"+inVO);
		return replyMapper.doUpdate(inVO);
	}

	@Override
	public int doSave(Reply inVO) throws SQLException {
		log.debug("1. param :"+inVO);
		return replyMapper.doSave(inVO);
	}
    
	
	@Override
	public Reply doSelectOne(Reply inVO) throws SQLException {
		//단건 조회
		log.debug("1. param :"+inVO);
		Reply outVO = replyMapper.doSelectOne(inVO);
		log.debug("2. outVO :"+outVO);
		
		
		return outVO;
	}

}