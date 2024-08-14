package com.pcwk.ehr.member.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.mapper.MemberMapper;
import com.pcwk.ehr.member.domain.Member;

@Service
public class MemberServiceImpl implements MemberService, PLog {


	@Autowired
	MemberMapper memberMapper;
	
	public MemberServiceImpl() {

	}

	@Override
	public int idPasswordCheck(Member inVO) throws SQLException {
		log.debug("1. param :"+inVO);
		int status = 0;
		
		
		
		int loginCnt = memberMapper.idCheck(inVO);
		if(0 == loginCnt) {
			status = 10;
			return status;
		}
		
		
		int passwordCnt = memberMapper.passwordCheck(inVO);
		if(0 == passwordCnt) {
			status = 20;
			return status;
		}
		
		status = 30;
		log.debug("2. status :"+status);
		return status;
	}

	@Override
	public Member login(Member inVO) throws SQLException {
	    log.debug("1. param :" + inVO);
	    Member login = memberMapper.login(inVO);
	    log.debug("2. login :" + login);
	    
	    if (login == null) {
	        log.debug("Login failed: No member found with provided credentials.");
	        // 추가 처리가 필요할 경우 여기에 코드를 작성
	    }
	    
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
	public boolean checkUserId(String memberId) {
		// TODO Auto-generated method stub
		return false;
	}



}
