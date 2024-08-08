package com.pcwk.ehr.messageArea.mapper;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.After;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.mapper.DisasterMsgMapper;
import com.pcwk.ehr.mapper.MessageAreaMapper;
import com.pcwk.ehr.messageArea.domain.MessageArea;

@RunWith(SpringRunner.class) //스프링 컨텍스트 프레임워크의 JUnit확장기능 지정
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
                                   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" 		
})
@FixMethodOrder(MethodSorters.NAME_ASCENDING) //메소드 수행 순서: method ASCENDING ex)a~z
public class MessageAreaMapperTest implements PLog{
	
	@Autowired
	ApplicationContext context;
	
	@Autowired
	MessageAreaMapper messageAreaMapper;
    
	MessageArea messageArea;
	@Before
	public void setUp() throws Exception {
		messageArea=new MessageArea();
		messageArea.setMessageSeq(216994);
	}

	@After
	public void tearDown() throws Exception {
	}
    
	@Test
	public void getAreaNmTest() throws SQLException {
		String areaNm =messageAreaMapper.getMessageAreas(216994);
		log.debug(areaNm);
		assertEquals("경상남도 창원시 마산합포구, 경상남도 창원시 마산회원구, 경상남도 창원시 성산구, 경상남도 창원시 의창구, 경상남도 창원시 진해구", areaNm);
	}
	
	@Ignore
	@Test
	public void beans() {
		assertNotNull(context);
		assertNotNull(messageAreaMapper);
	}

}
