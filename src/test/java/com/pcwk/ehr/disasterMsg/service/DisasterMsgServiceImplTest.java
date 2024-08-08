package com.pcwk.ehr.disasterMsg.service;

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
import com.pcwk.ehr.disasterMsg.domain.DisasterMsg;

@RunWith(SpringRunner.class) //스프링 컨텍스트 프레임워크의 JUnit확장기능 지정
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
                                   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" 		
})
@FixMethodOrder(MethodSorters.NAME_ASCENDING) //메소드 수행 순서: method ASCENDING ex)a~z
public class DisasterMsgServiceImplTest implements PLog {
	
	@Autowired
	ApplicationContext context;
	
	@Autowired
	DisasterMsgService disasterMsgService;
    
	DisasterMsg msg;
	@Before
	public void setUp() throws Exception {
		msg= new DisasterMsg();
		msg.setMessageSeq(216990);
	}

	@After
	public void tearDown() throws Exception {
	}
    
	@Test
	public void doSelectOneWithDetails() throws SQLException {
		log.debug(msg);
		DisasterMsg outVO =disasterMsgService.doSelectOneWithDetails(msg);
	    log.debug(outVO);
	}
	
	@Ignore
	@Test
	public void beans() {
		assertNotNull(disasterMsgService);
		assertNotNull(context);
		
	}

}
