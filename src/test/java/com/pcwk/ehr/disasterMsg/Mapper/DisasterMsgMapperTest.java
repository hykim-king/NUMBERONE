package com.pcwk.ehr.disasterMsg.Mapper;

import static org.junit.Assert.*;
import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
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

import com.google.gson.reflect.TypeToken;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.disasterMsg.domain.DisasterMsg;
import com.pcwk.ehr.mapper.DisasterMsgMapper;
import com.pcwk.ehr.statisticsCondition.domain.StatisticsCondition;


@RunWith(SpringRunner.class) //스프링 컨텍스트 프레임워크의 JUnit확장기능 지정
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
                                   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" 		
})
@FixMethodOrder(MethodSorters.NAME_ASCENDING) //메소드 수행 순서: method ASCENDING ex)a~z
public class DisasterMsgMapperTest implements PLog{
	
	@Autowired
	ApplicationContext context;
	
	@Autowired
	DisasterMsgMapper disasterMsgMapper;
	
	DisasterMsg disasterMsg;
	StatisticsCondition condition;
    StatisticsCondition condition2;
    Search search;
	@Before
	public void setUp() throws Exception {
		disasterMsg = new DisasterMsg();
		disasterMsg.setMessageSeq(211111);
		
		condition = new StatisticsCondition();
		condition.setStartDate("2024/01/01");
		condition.setEndDate("2024/07/01");
		condition.setLocCode(1168010500);//강남구 삼성동 코드
		
		condition2 = new StatisticsCondition();
		condition2.setStartDate("2024/01/01");
		condition2.setEndDate("2024/07/01");
		condition2.setLocCode(1100000000);//서울 코드
		search = new Search();
		search.setPageNo(1);
        search.setPageSize(100);
        search.setSearchDiv("10");
        search.setSearchWord("1168010500");
	}

	@After
	public void tearDown() throws Exception {
	}
	
	@Test
	public void doRetrieveTest() throws SQLException {
		disasterMsgMapper.doRetrieve(search);
		
	}
	
	
	@Test
	public void statisticsUpward() throws SQLException {
	    List<Map<String,Object>> list = (List<Map<String, Object>>) disasterMsgMapper.disasterTypeStatisticsUpward(condition);
	    Map<String, Integer> resultMap = new HashMap<>();
	    
        for (Map<String, Object> row : list) {
        	String key =(String) row.get("DISASTER_TYPE");
        	int value =Integer.parseInt(String.valueOf(row.get("CNT")));
            resultMap.put(key, value);
        }
        log.debug("-----------------------------");
		log.debug(resultMap);
		assertEquals(resultMap.get("지진"), 2);
		assertEquals(resultMap.get("산불"), 5);
	}
	@Test
	public void statisticsDownward() throws SQLException {
	    List<Map<String,Object>> list = (List<Map<String, Object>>) disasterMsgMapper.disasterTypeStatisticsDownward(condition2);
	    Map<String, Integer> resultMap = new HashMap<>();
        for (Map<String, Object> row : list) {
        	String key =(String) row.get("DISASTER_TYPE");
        	int value =Integer.parseInt(String.valueOf(row.get("CNT")));
            resultMap.put(key, value);
        }
        log.debug("-----------------------------");
		log.debug(resultMap);
		//assertEquals(map.get(0).get("지진"), 6);
		
	}
	
	
	@Test
	public void doSelectOneTest() throws SQLException {
		DisasterMsg outVO=disasterMsgMapper.doSelectOne(disasterMsg);
		log.debug("outVO:" +outVO);
		
	}
	
	
	
    @Ignore
	@Test
	public void beans() {
		assertNotNull(context);
		assertNotNull(disasterMsgMapper);
	}

}
