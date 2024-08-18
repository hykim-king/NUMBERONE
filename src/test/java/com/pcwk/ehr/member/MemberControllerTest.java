package com.pcwk.ehr.member;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.After;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.google.gson.Gson;
import com.pcwk.ehr.cmn.Message;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.mapper.MemberMapper;
import com.pcwk.ehr.member.domain.Member;
@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
        "file:src/main/webapp/WEB-INF/spring/root-context.xml",
        "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class MemberControllerTest implements PLog{

	 @Autowired
	    WebApplicationContext webApplicationContext;

	    MockMvc mockMvc;
	    @Autowired
	    MemberMapper memberMapper;

	    MockHttpSession session;

	    Member login01;
	    Member memVO01;

	    @Before
	    public void setUp() throws Exception {
	        // 전체 삭제
	        //memberMapper.deleteAll();

	        
	        login01 = new Member("user1", "password1");
	        memVO01 = new Member("user1", 1, "password1", "UserOne", "nickname1", 'N',"email@example.com");

	        mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
	        session = new MockHttpSession();
	    }
	    
	    @Ignore
	    @Test
	    public void login() throws Exception {
	        // 사용자 등록
	        //int flag = memberMapper.doSave(memVO01);
	        //assertEquals(1, flag);

	        // 호출방식, URL, param 저장
	        MockHttpServletRequestBuilder requestBuilder = MockMvcRequestBuilders.post("/member/login.do")
	                .param("memberId", login01.getMemberId())
	                .param("password", login01.getPassword())
	                .session(session);

	        // 호출
	        ResultActions resultActions = mockMvc.perform(requestBuilder)
	                .andExpect(MockMvcResultMatchers.status().isOk()); // 상태 코드 200 기대

	        String jsonResult = resultActions.andDo(print())
	                .andReturn()
	                .getResponse().getContentAsString();

	        Message resultMessage = new Gson().fromJson(jsonResult, Message.class);
	        assertEquals(30, resultMessage.getMessageId());
	        assertEquals("아이디 비밀번호 일치!!", resultMessage.getMessageContents());

	        // session
	        Member member = (Member) session.getAttribute("member");
	        assertNotNull(member); // 여기서 AssertionError가 발생하는 것
	        //assertEquals("UserOne", member.getName());
	    }

	    @Ignore
	    @Test
	    public void loginInfoPasswordFail() throws Exception {
	        // 사용자 등록
	        int flag = memberMapper.doSave(memVO01);
	        assertEquals(1, flag);

	        // 호출방식, URL, param 저장
	        MockHttpServletRequestBuilder requestBuilder = MockMvcRequestBuilders.post("/member/login.do")
	                .param("memberId", login01.getMemberId())
	                .param("password", "wrongpassword")
	                .session(session);

	        // 호출
	        ResultActions resultActions = mockMvc.perform(requestBuilder)
	                .andExpect(MockMvcResultMatchers.content().contentType("text/plain;charset=UTF-8"))
	                .andExpect(status().isOk());

	        String jsonResult = resultActions.andDo(print())
	                .andReturn()
	                .getResponse().getContentAsString();

	        Message resultMessage = new Gson().fromJson(jsonResult, Message.class);
	        assertEquals(20, resultMessage.getMessageId());
	        assertEquals("비밀번호를 확인 해 주세요.", resultMessage.getMessageContents());

	        // session
	        Member member = (Member) session.getAttribute("member");
	        assertNull(member);
	    }

	    
	    @Ignore
	    @Test
	    public void loginInfoIdFail() throws Exception {
	        // 사용자 등록
	        int flag = memberMapper.doSave(memVO01);
	        assertEquals(1, flag);

	        // 호출방식, URL, param 저장
	        MockHttpServletRequestBuilder requestBuilder = MockMvcRequestBuilders.post("/member/login.do")
	                .param("memberId", "wrongid")
	                .param("password", login01.getPassword())
	                .session(session);

	        // 호출
	        ResultActions resultActions = mockMvc.perform(requestBuilder)
	                .andExpect(MockMvcResultMatchers.content().contentType("text/plain;charset=UTF-8"))
	                .andExpect(status().isOk());

	        String jsonResult = resultActions.andDo(print())
	                .andReturn()
	                .getResponse().getContentAsString();

	        Message resultMessage = new Gson().fromJson(jsonResult, Message.class);
	        assertEquals(10, resultMessage.getMessageId());
	        assertEquals("아이디를 확인 해 주세요.", resultMessage.getMessageContents());

	        // session
	        Member member = (Member) session.getAttribute("member");
	        assertNull(member);
	    }

	
	    
	    
	    @Test
	    public void doSave() throws Exception {
	        // 새 회원 정보
	        Member newMember = new Member("user2", 1, "password2", "UserTwo", "nickname2", 'Y',"email@example.com");

	        // 호출방식, URL, param 저장
	        MockHttpServletRequestBuilder requestBuilder = MockMvcRequestBuilders.post("/member/doSave.do")
	                .contentType("application/json")
	                .content(new Gson().toJson(newMember));

	        // 호출
	        ResultActions resultActions = mockMvc.perform(requestBuilder)
	                .andExpect(MockMvcResultMatchers.content().contentType("text/plain;charset=UTF-8"))
	                .andExpect(status().isOk());

	        String jsonResult = resultActions.andDo(print())
	                .andReturn()
	                .getResponse().getContentAsString();

	        Message resultMessage = new Gson().fromJson(jsonResult, Message.class);
	        assertEquals(0, resultMessage.getMessageId()); // 성공 시 0
	        assertEquals("회원가입 완료!", resultMessage.getMessageContents());
	    }

	    

	    
	    @After
	    public void tearDown() throws Exception {
	    	log.debug("┌─────────────────────────────────────────────────────────┐");
			log.debug("│ tearDown()                                              │");
			log.debug("└─────────────────────────────────────────────────────────┘");
	    }

	    @Test
	    public void beans() {
	        System.out.println("[̲̅B][̲̅e][̲̅a][̲̅n][̲̅s]");
	        assertNotNull(webApplicationContext);
	        assertNotNull(mockMvc);
	        assertNotNull(memberMapper);
	    }
}
