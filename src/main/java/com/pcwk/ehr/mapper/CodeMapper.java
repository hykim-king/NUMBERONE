package com.pcwk.ehr.mapper;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.code.domain.Code;

public interface CodeMapper extends WorkDiv<Code> {

	List<Code> doRetrieveIn(List search) throws SQLException;
		
	
	
}
