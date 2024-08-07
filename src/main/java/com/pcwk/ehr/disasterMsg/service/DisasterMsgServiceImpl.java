package com.pcwk.ehr.disasterMsg.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.cmn.DTO;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.disasterMsg.domain.DisasterMsg;
import com.pcwk.ehr.mapper.DisasterMsgMapper;
import com.pcwk.ehr.mapper.MessageAreaMapper;

@Service
public class DisasterMsgServiceImpl implements DisasterMsgService,PLog{
    
	@Autowired
	DisasterMsgMapper disasterMsgMapper;
	
	@Autowired
	MessageAreaMapper messageAreaMapper;
	
	@Override
	public int doSave(DisasterMsg inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public DisasterMsg doSelectOne(DisasterMsg inVO) throws SQLException {
		return null;
	}

	@Override
	public List<DisasterMsg> doRetrieve(DTO search) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int doUpdate(DisasterMsg inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int doDelete(DisasterMsg inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public DisasterMsg doSelectOneWithDetails(DisasterMsg msg) throws SQLException {
		log.debug(msg);
		DisasterMsg disasterMsg=disasterMsgMapper.doSelectOne(msg);
		log.debug(disasterMsg);
		disasterMsg.setBroadcastArea(messageAreaMapper.getMessageAreas(disasterMsg.getMessageSeq()));
		return disasterMsg;
	}

}
