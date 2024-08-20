package com.pcwk.ehr.news.mapper;

import static org.junit.Assert.*;

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
import com.pcwk.ehr.mapper.NewsMapper;
import com.pcwk.ehr.news.domain.News;
import com.pcwk.ehr.statisticsCondition.domain.StatisticsCondition;

@RunWith(SpringRunner.class) //스프링 컨텍스트 프레임워크의 JUnit확장기능 지정
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
                                   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" 		
})
@FixMethodOrder(MethodSorters.NAME_ASCENDING) //메소드 수행 순서: method ASCENDING ex)a~z
public class NewsMapperTest implements PLog{
	@Autowired
	ApplicationContext context;
	
	@Autowired
	NewsMapper newsMapper;
    
	
	News inVO =null;
	StatisticsCondition condition;
	@Ignore
	@Test
	public void doSelectOneTest() throws Exception{
		
		News result =newsMapper.doSelectOne(inVO);
		log.debug(result);
	}
	
	@Test
	public void doRetrieveTest() throws Exception{
		
		List<News> result =newsMapper.doRetrieve(condition);
		log.debug(result);
	}
	
	@Before
	public void setUp() throws Exception {
		inVO = new News();
		inVO.setNewsSeq(737563);
		
		condition = new StatisticsCondition();
		condition.setStartDate("2024/01/01");
		condition.setEndDate("2024/07/01");
		condition.setSearchDiv("30");
		condition.setSearchWord("화재");
	}

	@After
	public void tearDown() throws Exception {
	}
    @Ignore
	@Test
	public void test() {
		assertNotNull(newsMapper);
	}

}
