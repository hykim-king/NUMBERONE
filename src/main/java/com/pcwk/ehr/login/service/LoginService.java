package com.pcwk.ehr.login.service;

import java.sql.SQLException;
import com.pcwk.ehr.login.domain.Login;
import com.pcwk.ehr.member.domain.Member;

public interface LoginService {


	int idPasswordCheck(Login inVO)throws SQLException;



	boolean doSave(Member member);



	Member login(Login inVO) throws SQLException;



	boolean checkNickname(String nickname);



	boolean checkUserId(String memberId);


}
