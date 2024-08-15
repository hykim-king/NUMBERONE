package com.pcwk.ehr.member.service;

import static org.junit.Assert.*;
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
import com.pcwk.ehr.mapper.MemberMapper;
import com.pcwk.ehr.member.domain.Member;


@RunWith(SpringRunner.class) 
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
                                   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" 		
})
@FixMethodOrder(MethodSorters.NAME_ASCENDING) 
public class MemberServiceImplTest implements PLog{
	@Autowired
	ApplicationContext context;
	@Autowired
	MemberService  memberService;
	@Autowired
	MemberMapper memberMapper;	
	
	
	
	Member   login01;
	Member    memVO01;
	
	
	@Before
	public void setUp() throws Exception {
		System.out.println("[̲̅s][̲̅e][̲̅t][̲̅U][̲̅p]");

		
		//memberMapper.deleteAll();
		
		login01 =new Member("user1", "password1");
		memVO01= new Member("user1", 1, "password1", "User One", "nickname1", 'N');
				
	}

	@Test
	public void idPasswordCheck() throws Exception {

		int count = memberMapper.getCount();
		assertEquals(0,count);			
		
		
		int flag = memberMapper.doSave(memVO01);
		assertEquals(1, flag);
		assertEquals(memberMapper.getCount(), 1);		
		
		
		Member outVO = memberMapper.doSelectOne(memVO01);
		assertNotNull(outVO);
	
		assertMembersEqual(memVO01, outVO);		
		
		
		login01.setMemberId("아이디 불일치~");
		
		//id확인
		int idPasswordCnt = this.memberService.idPasswordCheck(login01);
		assertEquals(10, idPasswordCnt);
		
		//비번확인
		login01.setMemberId("user1");
		login01.setPassword("비번 불일치~~~~~~~~~");
		idPasswordCnt = this.memberService.idPasswordCheck(login01);
		assertEquals(20, idPasswordCnt);
		
		//id비번 
		login01.setMemberId("user1");
		login01.setPassword("password1");
		idPasswordCnt = this.memberService.idPasswordCheck(login01);
		assertEquals(30, idPasswordCnt);		
		
		
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
		log.debug("memberMapper:" + memberMapper);
		log.debug("memberService:" + memberService);
		assertNotNull(context);
		assertNotNull(memberMapper);
		assertNotNull(memberService);
	}

}