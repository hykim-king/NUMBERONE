package com.pcwk.ehr.location.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.cmn.DTO;
import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.location.domain.Location;

public interface LocationService extends WorkDiv<Location> {
	
	List<Location> sidoRetrieve() throws SQLException;
}
