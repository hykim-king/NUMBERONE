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
    public int idPasswordCheck(Member member) throws SQLException {
    	log.debug("1. param :" + member);
        int status = 0;

        // 아이디 존재 여부 확인
        int loginCnt = memberMapper.idCheck(member);
        if (loginCnt == 0) {
            status = 10; // 아이디가 존재하지 않음
            return status;
        }

        // 비밀번호 확인
        // 아이디가 존재하면 비밀번호를 체크합니다.
        int passwordCnt = memberMapper.passwordCheck(member);
        if (passwordCnt == 0) {
            status = 20; // 비밀번호가 일치하지 않음
            return status;
        }

        // 아이디와 비밀번호가 모두 일치
        status = 30; // 아이디와 비밀번호가 일치
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
    public Member doSelectOne(String memberId) {
        log.debug("1. param: " + memberId);
        Member member = null;
        try {
            member = memberMapper.doSelectOne(memberId); // 올바른 호출
            if (member != null) {
                member.setPassword(null); // 비밀번호를 null로 설정
            }
        } catch (SQLException e) {
            log.error("Error in doSelectOne: " + e.getMessage());
        }
        log.debug("2. result: " + member);
        return member;
    }
    
    
	@Override
	public Member getAll(Member member) {

		return member;
	}

    
    @Override
    public boolean doSave(Member member) {
        log.debug("1. param :" + member);

        try {
            // 아이디 중복 체크
            if (idDuplicateCheck(member.getMemberId())) {
                log.debug("아이디가 이미 존재합니다: " + member.getMemberId());
                return false;
            }

            // 닉네임 중복 체크
            if (nicknameDuplicateCheck(member.getNickname())) {
                log.debug("닉네임이 이미 존재합니다: " + member.getNickname());
                return false;
            }

            // 중복이 없으면 저장
            int flag = memberMapper.doSave(member);
            if (flag == 1) {
                log.debug("회원 가입 성공: " + member.getMemberId());
                return true;
            } else {
                log.debug("회원 가입 실패: " + member.getMemberId());
                return false;
            }
        } catch (SQLException e) {
            log.error("SQLException in doSave: " + e.getMessage());
            return false;
        }
    }

    @Override
    public Member findMemberId(Member member) {
        return memberMapper.findMemberId(member);
    }



    @Override
    public int locCodeUpdate(Member member) {
        int flag= memberMapper.locCodeUpdate(member);
		return flag;
    }
    
    @Override
    public boolean idDuplicateCheck(String memberId) {
        try {
            // 아이디 중복 체크
            return memberMapper.idDuplicateCheck(memberId) > 0;
        } catch (SQLException e) {
            log.error("SQLException in idDuplicateCheck: " + e.getMessage());
            return false;
        }
    }
    
    

    @Override
    public boolean nicknameDuplicateCheck(String nickname) {
        try {
            // 닉네임 중복 체크
            return memberMapper.nicknameDuplicateCheck(nickname) > 0;
        } catch (SQLException e) {
            log.error("SQLException in nicknameDuplicateCheck: " + e.getMessage());
            return false;
        }
    }
    
    
    @Override
    public boolean logout(String memberId) throws SQLException {
        log.debug("1. param: " + memberId);
        // 로그아웃을 위한 추가 로직이 필요할 수 있습니다.
        // 예를 들어, 데이터베이스에서 세션을 관리하는 경우
        // 세션을 무효화하는 로직 추가
        
        return true; // 로그아웃 성공 여부 반환
    }

	@Override
	public Member getMemberById(String memberId) {
		log.debug(memberId);
		Member outVO =memberMapper.getMemberById(memberId);
		log.debug(outVO);
		return outVO;
	}


	

	





}


