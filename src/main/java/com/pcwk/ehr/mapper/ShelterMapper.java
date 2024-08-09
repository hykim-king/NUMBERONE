package com.pcwk.ehr.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.shelter.domain.Shelter;

@Mapper
public interface ShelterMapper extends WorkDiv<Shelter> {
	
	List<Shelter> shelterRetrieve() throws SQLException;
	
}
