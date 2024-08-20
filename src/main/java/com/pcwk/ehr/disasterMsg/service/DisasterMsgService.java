package com.pcwk.ehr.disasterMsg.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.disasterMsg.domain.DisasterMsg;
import com.pcwk.ehr.statisticsCondition.domain.StatisticsCondition;

public interface DisasterMsgService extends WorkDiv<DisasterMsg> {
	
	public DisasterMsg doSelectOneWithDetails(DisasterMsg msg) throws SQLException;
    
	public Map<String, Integer> disasterTypeStatisticsUpward(StatisticsCondition condition) throws SQLException;
    
	public Map<String, Integer> disasterTypeStatisticsDownward(StatisticsCondition condition) throws SQLException;
    
	public String isNewMessageExist(long locCode) throws SQLException;
	
	public int updateSequence() throws SQLException;

	Map<String, Integer> disasterTypeStatisticsBySido(StatisticsCondition condition) throws SQLException;

	Map<String, Integer> disasterTypeStatisticsAll(StatisticsCondition condition) throws SQLException;
}
