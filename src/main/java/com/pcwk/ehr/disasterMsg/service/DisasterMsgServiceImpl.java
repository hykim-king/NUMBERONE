package com.pcwk.ehr.disasterMsg.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.cmn.DTO;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.disasterMsg.domain.DisasterMsg;
import com.pcwk.ehr.mapper.DisasterMsgMapper;
import com.pcwk.ehr.mapper.MessageAreaMapper;
import com.pcwk.ehr.statisticsCondition.domain.StatisticsCondition;

@Service
public class DisasterMsgServiceImpl implements DisasterMsgService,PLog{
    

	

	@Autowired
	DisasterMsgMapper disasterMsgMapper;
	
	@Autowired
	MessageAreaMapper messageAreaMapper;
	
	@Override
	public Map<String, Integer> disasterTypeStatisticsAll(StatisticsCondition condition) throws SQLException {
		log.debug("condition:"+condition);
		List<Map<String,Object>> list = (List<Map<String, Object>>) disasterMsgMapper.disasterTypeStatisticsAll(condition);
		log.debug("list:"+list);
		Map<String, Integer> resultMap = new HashMap<>();
        for (Map<String, Object> row : list) {
        	String key =(String) row.get("DISASTER_TYPE");
        	int value =Integer.parseInt(String.valueOf(row.get("CNT")));
            resultMap.put(key, value);
        }
		return resultMap;
	}

	@Override
	public Map<String, Integer> disasterTypeStatisticsBySido(StatisticsCondition condition) throws SQLException {
		log.debug("condition:"+condition);
		Map<String, Integer> resultMap= new HashMap<>();
		return null;
	}

	@Override
	public Map<String, Integer> disasterTypeStatisticsUpward(StatisticsCondition condition) throws SQLException {
		log.debug("condition:"+condition);
		List<Map<String,Object>> list = (List<Map<String, Object>>) disasterMsgMapper.disasterTypeStatisticsUpward(condition);
		log.debug("list:"+list);
		Map<String, Integer> resultMap = new HashMap<>();
        for (Map<String, Object> row : list) {
        	String key =(String) row.get("DISASTER_TYPE");
        	int value =Integer.parseInt(String.valueOf(row.get("CNT")));
            resultMap.put(key, value);
        }
		return resultMap;
	}

	@Override
	public Map<String, Integer> disasterTypeStatisticsDownward(StatisticsCondition condition) throws SQLException {
		log.debug("condition:"+condition);
		List<Map<String,Object>> list = (List<Map<String, Object>>) disasterMsgMapper.disasterTypeStatisticsDownward(condition);
		log.debug("list:"+list);
		Map<String, Integer> resultMap = new HashMap<>();
        for (Map<String, Object> row : list) {
        	String key =(String) row.get("DISASTER_TYPE");
        	int value =Integer.parseInt(String.valueOf(row.get("CNT")));
            resultMap.put(key, value);
        }
		return resultMap;
	}
	
	@Override
	public String isNewMessageExist() throws SQLException {
		log.debug("isNewMessageExist:"+disasterMsgMapper.isNewMessageExist());
		return disasterMsgMapper.isNewMessageExist();
	}
	
	
	
	@Override
	public int updateSequence() throws SQLException {
		int flag= disasterMsgMapper.updateSequence();
		log.debug(flag);
		return flag;
	}

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
		log.debug("search:"+search);
		List<DisasterMsg> list = disasterMsgMapper.doRetrieve(search);
		log.debug("list:"+list);
		return list;
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
