package com.pcwk.ehr.code.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.code.domain.Code;

public interface CodeService extends WorkDiv<Code> {

	public List<Code> doRetrieveIn(List<String> codeList) throws SQLException;
	
	public String getDisasterTypeNameFromCode(String detCode) throws SQLException;
	
	public String getDisasterTypeNameEngFromCode(String detCode) throws SQLException;
	
}
