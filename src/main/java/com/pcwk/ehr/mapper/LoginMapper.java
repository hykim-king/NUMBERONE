package com.pcwk.ehr.mapper;

import java.sql.SQLException;
import org.apache.ibatis.annotations.Mapper;
import com.pcwk.ehr.cmn.WorkDiv;
import com.pcwk.ehr.login.domain.Login;
import com.pcwk.ehr.member.domain.Member;


@Mapper
public interface LoginMapper extends WorkDiv<Login> {
	
	
	int idCheck(Login inVO)throws SQLException;

	int passwordCheck(Login inVO)throws SQLException;

	Member login(Login inVO)throws SQLException;
	
}


