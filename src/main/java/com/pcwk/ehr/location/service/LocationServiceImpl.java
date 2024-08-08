package com.pcwk.ehr.location.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.cmn.DTO;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.code.domain.Code;
import com.pcwk.ehr.location.domain.Location;
import com.pcwk.ehr.mapper.LocationMapper;

@Service("locationServiceImpl")
public class LocationServiceImpl implements LocationService, PLog {

	@Autowired
	LocationMapper locationMapper;

	// default 생성자
	public LocationServiceImpl() {

	}

	@Override
	public int doSave(Location inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Location doSelectOne(Location inVO) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Location> doRetrieve(DTO search) throws SQLException {
		log.debug("1. param :" + search);
		
		List<Location> list = this.locationMapper.doRetrieve(search);
		
		return list;
	}

	@Override
	public int doUpdate(Location inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int doDelete(Location inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Location> sidoRetrieve() throws SQLException {
		log.debug("1. param :");
		
		List<Location> list = this.locationMapper.sidoRetrieve();
		
		return list;
	}

	@Override
	public List<Location> sigunguRetrieve(Location inVO) throws SQLException {
		log.debug("1. param :" + inVO);
		
		List<Location> list = this.locationMapper.sigunguRetrieve((Location) inVO);
		for (Location vo : list) {
			log.debug(vo);
		}
		return list;
	}

	@Override
	public List<Location> eupmyeondongRetrieve(Location inVO2) throws SQLException {
		log.debug("1. param :" + inVO2);
		
		List<Location> list = locationMapper.eupmyeondongRetrieve((Location) inVO2);
		for (Location vo : list) {
			log.debug(vo);
		}
		return list;
	}

}
