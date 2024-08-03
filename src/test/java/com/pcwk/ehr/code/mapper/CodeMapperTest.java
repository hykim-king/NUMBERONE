package com.pcwk.ehr.code.mapper;

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
import com.pcwk.ehr.code.domain.Code;
import com.pcwk.ehr.mapper.CodeMapper;

@RunWith(SpringRunner.class) //스프링 컨텍스트 프레임워크의 JUnit확장기능 지정
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
                                   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" 		
})
@FixMethodOrder(MethodSorters.NAME_ASCENDING) //메소드 수행 순서: method ASCENDING ex)a~z
public class CodeMapperTest implements PLog{

	@Autowired
	ApplicationContext context;
	
	@Autowired
	CodeMapper codeMapper;
	
	Code code;
	ArrayList<String> list;
	
	@Before
	public void setUp() throws Exception {
		log.debug("┌─────────────────────────────────────────────────────────┐");
		log.debug("│ setUp()                                                 │");
		log.debug("└─────────────────────────────────────────────────────────┘");
		
		code = new Code();
		list = new ArrayList<String>();
		list.add("COM_PAGE_SIZ");
		list.add("SHELTER_DIV");
		list.add("EMERGENCY_LEVEL");
	
	}

	@After
	public void tearDown() throws Exception {
		log.debug("┌─────────────────────────────────────────────────────────┐");
		log.debug("│ tearDown()                                              │");
		log.debug("└─────────────────────────────────────────────────────────┘");
		
	}
	
	@Test
	public void doRetrieve() throws SQLException{
		code.setMstCode("SHELTER_DIV");
		List<Code> codeList = codeMapper.doRetrieve(code);
		for(Code vo : codeList) {
			log.debug(vo);
		}
		
	}
	
	@Ignore
	@Test
	public void beans() {
		
		log.debug("┌─────────────────────────────────────────────────────────┐");
		log.debug("│ beans()                                                 │");
		log.debug("└─────────────────────────────────────────────────────────┘");
			
		assertNotNull(context);
	}

}
