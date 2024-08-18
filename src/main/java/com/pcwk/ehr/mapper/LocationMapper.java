package com.pcwk.ehr.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.location.domain.Location;

@Mapper
public interface LocationMapper extends WorkDiv<Location> {

	List<Location> sidoRetrieve() throws SQLException;
	
	List<Location> sigunguRetrieve(Location inVO) throws SQLException;
	
	List<Location> eupmyeondongRetrieve(Location inVO2) throws SQLException;
	
	String addressFromLocCode(Location inVO) throws SQLException;
	
}
