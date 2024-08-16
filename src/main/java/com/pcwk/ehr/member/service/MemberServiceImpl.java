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
    
    public MemberServiceImpl() {}

    @Override
    public int idPasswordCheck(Member inVO) throws SQLException {
        log.debug("1. param :" + inVO);
        int status = 0;

        int loginCnt = memberMapper.idCheck(inVO.getMemberId(), inVO.getPassword());
        if (loginCnt == 0) {
            status = 10;
            return status;
        }

        int passwordCnt = memberMapper.passwordCheck(inVO.getPassword());
        if (passwordCnt == 0) {
            status = 20;
            return status;
        }

        status = 30;
        log.debug("2. status :" + status);
        return status;
    }

    @Override
    public Member login(Member inVO) throws SQLException {
        log.debug("1. param :" + inVO);
        // inVO의 필드를 로그에 출력
        log.debug("MemberId: " + inVO.getMemberId());
        log.debug("Password: " + inVO.getPassword());
        
        // Mapper 호출 및 결과 확인
        Member login = memberMapper.login(inVO);
        log.debug("2. login :" + login);
        
        // 결과가 없을 경우 로그
        if (login == null) {
            log.debug("Login failed: No member found with provided credentials.");
        }
        
        return memberMapper.login(inVO);
    }

    @Override
    public boolean doSave(Member member) {
        log.debug("1. param :" + member);
        boolean result = false;
        int flag = 0;
        try {
            flag = memberMapper.doSave(member);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (flag == 1) {
            result = true;
        }
        return result;
    }

    @Override
    public boolean checkNickname(String nickname) {
       
        return false;
    }

    @Override
    public boolean checkUserId(String memberId) {
        
        return false;
    }


}


