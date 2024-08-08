package com.pcwk.ehr.location;

import static org.junit.Assert.*;

import java.sql.SQLException;
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
import com.pcwk.ehr.location.domain.Location;
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
	
	Location location;
	ArrayList<String> list;
	
	Search search;
	
	@Before
	public void setUp() throws Exception {
		log.debug("┌──────────────────────────────────────────────┐");
		log.debug("│ setUp()                                      │");
		log.debug("└──────────────────────────────────────────────┘");
		
		location = new Location();
		list = new ArrayList<String>();
		
		search = new Search();
	}

	@After
	public void tearDown() throws Exception {
		log.debug("┌──────────────────────────────────────────────┐");
		log.debug("│ tearDown()                                   │");
		log.debug("└──────────────────────────────────────────────┘");
	}
	
	
	@Test
	public void eupmyeondongRetrieve() throws SQLException {
		
		List<Location> inVO = locationMapper.sidoRetrieve();
		
		List<Location> inVO2 = locationMapper.sigunguRetrieve(inVO.get(0));
		
		List<Location> list = locationMapper.eupmyeondongRetrieve(inVO2.get(0));
		for(Location vo : list) {
			log.debug(vo);
		}
		assertEquals(list.get(0).getEupmyeondong(), "개포동");
		
		
	}
	
	
	@Test
	public void sigunguRetrieve() throws SQLException {
		
		List<Location> inVO = locationMapper.sidoRetrieve();
		
		
		List<Location> list = locationMapper.sigunguRetrieve(inVO.get(0));
		for(Location vo : list) {
			log.debug(vo);
		}
		assertEquals(list.get(0).getSigungu(), "강남구");
	}
	
	
	@Test
	public void sidoRetrieve() throws SQLException {
		
		List<Location> list = locationMapper.sidoRetrieve();
		for(Location vo :list) {
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
		log.debug("locationMapper:" + locationMapper);
		
		assertNotNull(context);
		assertNotNull(locationMapper);
	}

}
