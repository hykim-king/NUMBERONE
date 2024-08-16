package com.pcwk.ehr.disasterMsg.service;

import static org.junit.Assert.*;
import static org.junit.jupiter.api.Assertions.assertEquals;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

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

import com.pcwk.ehr.cmn.DTO;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.disasterMsg.domain.DisasterMsg;
import com.pcwk.ehr.statisticsCondition.domain.StatisticsCondition;

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
	
	StatisticsCondition condition;
	StatisticsCondition condition2;
	StatisticsCondition condition3;
	DisasterMsg msg;
	Search search;
	@Before
	public void setUp() throws Exception {
		msg= new DisasterMsg();
		msg.setMessageSeq(216990);
		
		condition = new StatisticsCondition();
		condition.setStartDate("2024/01/01");
		condition.setEndDate("2024/07/01");
		condition.setLocCode(1168010500);//강남구 삼성동 코드
		
		condition2 = new StatisticsCondition();
		condition2.setStartDate("2024/01/01");
		condition2.setEndDate("2024/07/01");
		condition2.setLocCode(1100000000);//서울 코드
		
		condition3 = new StatisticsCondition();
		condition3.setStartDate("2024/01/01");
		condition3.setEndDate("2024/08/01");
		condition3.setDisasterType("heavyRain");
		
		search = new Search();
		search.setSearchDiv("10");
		search.setSearchWord("1168010500");
		search.setPageNo(1);
		search.setPageSize(5);
	}

	@After
	public void tearDown() throws Exception {
	}
	@Ignore
	@Test
	public void disasterTypeStatisticsBySidoTest() throws SQLException{
		log.debug(condition3);
		Map<String,Integer> resultMap=disasterMsgService.disasterTypeStatisticsBySido(condition3);
		
		 for (Map.Entry<String, Integer> entry : resultMap.entrySet()) {
	            log.debug("키: " + entry.getKey() + ", 값: " + entry.getValue());
	    }
		
	}
	
	//@Ignore
    @Test
    public void doRetrieve() throws SQLException{
    	log.debug(search);
    	List<DisasterMsg> list =disasterMsgService.doRetrieve(search);
    	log.debug(list);
    }
    
    @Ignore
	@Test
	public void doSelectOneWithDetails() throws SQLException {
		log.debug(msg);
		DisasterMsg outVO =disasterMsgService.doSelectOneWithDetails(msg);
	    log.debug(outVO);
	}
	
    @Ignore
	@Test
	public void statisticsUpWardTest() throws SQLException {
		log.debug(condition);
		Map<String,Integer> outVO =disasterMsgService.disasterTypeStatisticsUpward(condition);
	    log.debug(outVO);
	    assertEquals(2, outVO.get("지진"));
	}
    @Ignore
	@Test
	public void statisticsDownWardTest() throws SQLException {
		log.debug(condition2);
		Map<String,Integer> outVO =disasterMsgService.disasterTypeStatisticsDownward(condition2);
	    log.debug(outVO);
	    assertEquals(2, outVO.get("지진"));
	}
	
	@Ignore
	@Test
	public void beans() {
		assertNotNull(disasterMsgService);
		assertNotNull(context);
		
	}

}
