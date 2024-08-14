package com.pcwk.ehr.shelter;

import static org.junit.Assert.assertNotNull;

import java.util.ArrayList;
import java.util.List;

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
import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.mapper.ShelterMapper;
import com.pcwk.ehr.shelter.domain.Shelter;

@RunWith(SpringRunner.class) // 스프링 컨텍스트 프레임워크의 JUnit확장기능 지정
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml",
									"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@FixMethodOrder(MethodSorters.NAME_ASCENDING) //알파벳 순서로 테스트 메서드 실행
public class ShelterTest implements PLog{
	
	@Autowired
	ApplicationContext context;
	
	@Autowired
	ShelterMapper shelterMapper;
	
	Shelter shelter;
	
	@Before
	public void setUp() throws Exception {
		log.debug("┌──────────────────────────────────────────────┐");
		log.debug("│ setUp()                                      │");
		log.debug("└──────────────────────────────────────────────┘");
		
		
		shelter = new Shelter();
		
		shelter.setShelterDiv("10");
		shelter.setLocCode(1111010200L);
	}

	@After
	public void tearDown() throws Exception {
		log.debug("┌──────────────────────────────────────────────┐");
		log.debug("│ tearDown()                                   │");
		log.debug("└──────────────────────────────────────────────┘");
	}
	
	@Test
	public void doRetrieve() throws Exception {
		
		List<Shelter> list = shelterMapper.doRetrieve(shelter);
		for(Shelter vo : list) {
			log.debug(vo);
		}
	}
	
	@Ignore
	@Test
	public void beans() {
		log.debug("┌──────────────────────────────────────────────┐");
		log.debug("│ beans()                                      │");
		log.debug("└──────────────────────────────────────────────┘");
		
		log.debug("context:" + context);
		log.debug("shelterMapper:" + shelterMapper);
		
		assertNotNull(context);
		assertNotNull(shelterMapper);
	}

}
