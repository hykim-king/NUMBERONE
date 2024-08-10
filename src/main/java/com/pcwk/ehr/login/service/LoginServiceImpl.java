package com.pcwk.ehr.login.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.login.domain.Login;
import com.pcwk.ehr.mapper.LoginMapper;
import com.pcwk.ehr.member.domain.Member;

@Service
public class LoginServiceImpl implements LoginService, PLog {

	@Autowired
	LoginMapper loginMapper;
	
	public LoginServiceImpl() {

	}

	@Override
	public int idPasswordCheck(Login inVO) throws SQLException {
		log.debug("1. param :"+inVO);
		int status = 0;
		
		
		
		int loginCnt = loginMapper.idCheck(inVO);
		if(0 == loginCnt) {
			status = 10;
			return status;
		}
		
		
		int passwordCnt = loginMapper.passwordCheck(inVO);
		if(0 == passwordCnt) {
			status = 20;
			return status;
		}
		
		status = 30;
		log.debug("2. status :"+status);
		return status;
	}

	@Override
	public Member login(Login inVO) throws SQLException {
		log.debug("1. param :"+inVO);
		Member login = loginMapper.login(inVO);
		log.debug("2. loginInfo :"+login);
		return login;
	}

	@Override
	public boolean doSave(Member member) {
		
		return false;
	}

	@Override
	public boolean checkNickname(String nickname) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean checkUserId(String userId) {
		// TODO Auto-generated method stub
		return false;
	}

}
