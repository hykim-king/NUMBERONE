
package com.pcwk.ehr.login;

import static org.junit.Assert.*;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.After;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.login.domain.Login;
import com.pcwk.ehr.mapper.LoginMapper;
import com.pcwk.ehr.mapper.MemberMapper;
import com.pcwk.ehr.member.domain.Member;



@RunWith(SpringRunner.class) //스프링 컨텍스트 프레임워크의 JUnit확장기능 지정
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
                                   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" 		
})
@FixMethodOrder(MethodSorters.NAME_ASCENDING) //메소드 수행 순서: method ASCENDING ex)a~z
public class LoginMapperTest implements PLog {

	@Autowired
	ApplicationContext context;	
	
	@Autowired
	LoginMapper  loginMapper;
	
	@Autowired
	MemberMapper memberMapper;
	
	
	Login   login01;
	Member  userVO01;
	@Before
	public void setUp() throws Exception {
		System.out.println("[̲̅s][̲̅e][̲̅t][̲̅U][̲̅p]");
		
		memberMapper.deleteAll();
		
		login01 =new Login("fd", "fd");
		userVO01= new Member("user1", 1, "password1", "User One", "nickname1", 'N');
		
	}

	@Test
	public void login() throws Exception {

	    System.out.println("[̲̅l][̲̅o][̲̅g][̲̅i][̲̅n]");


	    int idCount = loginMapper.idCheck(login01);
	    assertEquals(1, idCount); // Ensure ID check returns 1
	     
	    int passwordCount = loginMapper.passwordCheck(login01);
	    assertEquals(1, passwordCount); // Ensure password check returns 1
	    
	    // Perform login
	    Member loginVO = loginMapper.login(login01);
	    log.debug(loginVO);
	    assertMembersEqual(loginVO, userVO01);
	}
	
	public void assertMembersEqual(Member userVO01, Member actual) {

            assertEquals(userVO01.getMemberId(), actual.getMemberId());
            assertEquals(userVO01.getPassword(), actual.getPassword());
            assertEquals(userVO01.getName(), actual.getName());
            assertEquals(userVO01.getNickname(), actual.getNickname());
            assertEquals(userVO01.getIsAdmin(), actual.getIsAdmin());
		
	}
	
	@After
	public void tearDown() throws Exception {
		System.out.println("[̲̅t][̲̅e][̲̅a][̲̅r][̲̅D][̲̅o][̲̅w][̲̅n]");
	}

	@Test
	public void beans() {
		System.out.println("[̲̅B][̲̅e][̲̅a][̲̅n][̲̅s]");
		log.debug("context:" + context);		
		log.debug("loginMapper:" + loginMapper);	
		
		assertNotNull(context);
		assertNotNull(loginMapper);
	}

}
