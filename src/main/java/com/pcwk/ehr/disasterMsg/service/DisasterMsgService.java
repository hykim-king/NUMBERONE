package com.pcwk.ehr.disasterMsg.service;

import java.sql.SQLException;

import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.disasterMsg.domain.DisasterMsg;

public interface DisasterMsgService extends WorkDiv<DisasterMsg> {
	
	public DisasterMsg doSelectOneWithDetails(DisasterMsg msg) throws SQLException;

}
