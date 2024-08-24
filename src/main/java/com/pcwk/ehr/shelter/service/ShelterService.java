package com.pcwk.ehr.shelter.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.shelter.domain.Shelter;

public interface ShelterService extends WorkDiv<Shelter> {
	
	List<Shelter> shelterRetrieveWithParent(Shelter shelter) throws SQLException;
	
}
