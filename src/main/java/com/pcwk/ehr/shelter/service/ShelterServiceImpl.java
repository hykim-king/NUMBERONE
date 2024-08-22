package com.pcwk.ehr.shelter.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.ehr.cmn.DTO;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.location.domain.Location;
import com.pcwk.ehr.mapper.ShelterMapper;
import com.pcwk.ehr.shelter.domain.Shelter;

@Service("shelterServiceImpl")
public class ShelterServiceImpl implements ShelterService, PLog {
	
	@Autowired
	ShelterMapper shelterMapper;
	
	//default 생성자
	public ShelterServiceImpl() {
		
	}
	
	@Override
	public int doSave(Shelter inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Shelter doSelectOne(Shelter inVO) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Shelter> doRetrieve(DTO search) throws SQLException {
		log.debug("1. param :" + search);
		log.debug("======================================");
		log.debug("======================================");
		log.debug("======================================");
		log.debug("======================================");
		//Shelter의 locCode를 받아와야 하기 때문에 DTO search를 형변환.
		if (search instanceof Shelter) {
			Shelter shelter = (Shelter) search;
			log.debug("======================================");
			log.debug("shelter:"+ shelter);
			log.debug("======================================");
			return this.shelterMapper.doRetrieve(shelter);
		}else {
			return null;
		}
	}

	@Override
	public int doUpdate(Shelter inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int doDelete(Shelter inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

}
