package com.pcwk.ehr.reply.dao;

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

import com.pcwk.ehr.reply.domain.Reply;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.code.domain.Code;
import com.pcwk.ehr.mapper.ReplyMapper;

@RunWith(SpringRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
                                   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"        
})
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class ReplyMapperTest implements PLog {

    @Autowired
    ApplicationContext context;
    
    @Autowired
    ReplyMapper replyMapper;
    
    Reply reply;
    
    ArrayList<String> list;
    
    Search search;

    @Before
    public void setUp() throws Exception {
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ setUp()                                                 │");
        log.debug("└─────────────────────────────────────────────────────────┘");        
    
        search = new Search();
    }
   
    
    @After
    public void tearDown() throws Exception {
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ tearDown()                                              │");
        log.debug("└─────────────────────────────────────────────────────────┘");
    }
    
    @Test
    public void doRetrieve() throws Exception {
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ doRetrieve()                                          │");
        log.debug("└─────────────────────────────────────────────────────────┘");   	

        search.setPageNo(1);
        search.setPageSize(10);
        
        List<Reply> replyList = replyMapper.doRetrieve(search);
  

			log.debug(replyList);
		  
    }

    @Ignore
    @Test
    public void beans() {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ beans()                                  │");
        log.debug("└──────────────────────────────────────────┘");
        log.debug("context:" + context);
        log.debug("replyMapper:" + replyMapper);
        
        assertNotNull(context);
        assertNotNull(replyMapper);
    }
    
}
