package com.pcwk.ehr.location;

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
import com.pcwk.ehr.mapper.LocationMapper;

@RunWith(SpringRunner.class) // 스프링 컨텍스트 프레임워크의 JUnit확장기능 지정
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml",
									"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@FixMethodOrder(MethodSorters.NAME_ASCENDING) //알파벳 순서로 테스트 메서드 실행
public class LocationTest implements PLog{

	@Autowired
	ApplicationContext context;
	
	@Autowired
	LocationMapper locationMapper;
	
	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void beans() {
		log.debug("┌──────────────────────────────────────────────┐");
		log.debug("│ beans()                                      │");
		log.debug("└──────────────────────────────────────────────┘");
		log.debug("context:" + context);
		log.debug("locationMapper:" + locationMapper);
		
		assertNotNull(context);
		assertNotNull(locationMapper);
	}

}
