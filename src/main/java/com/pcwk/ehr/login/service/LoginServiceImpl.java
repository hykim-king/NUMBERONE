package com.pcwk.ehr.login.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.login.domain.Login;
import com.pcwk.ehr.mapper.LoginMapper;
import com.pcwk.ehr.mapper.MemberMapper;
import com.pcwk.ehr.member.domain.Member;

@Service
public class LoginServiceImpl implements LoginService, PLog {

	@Autowired
	LoginMapper loginMapper;
	@Autowired
	MemberMapper memberMapper;
	
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
		log.debug("2. login :"+login);
		return login;
	}

	@Override
	public boolean doSave(Member member) {
		log.debug("1. param :" + member);
		boolean result =false;
		int flag=0;
		try {
			flag = memberMapper.doSave(member);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if (flag ==1) {
			result =true;
		}
		return result;
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
