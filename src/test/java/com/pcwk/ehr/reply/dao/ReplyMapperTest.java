package com.pcwk.ehr.reply.dao;

import static org.junit.Assert.*;

import java.sql.SQLException;
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
    
    Reply reply01;
    Reply reply02;
    Reply reply03;

    @Before
    public void setUp() throws Exception {
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ setUp()                                                 │");
        log.debug("└─────────────────────────────────────────────────────────┘");        
        
        reply01 = new Reply(5, 2, "USER0002", "댓글내용 0005", 1, "사용안함", "사용안함");
        //reply02 = new Reply(3, 4, "userId02", "댓글내용_02", 34, "사용안함", "사용안함");
        //reply03 = new Reply(5, 6, "userId03", "댓글내용_03", 56, "사용안함", "사용안함");
       
        //replyMapper.deleteAll();       
    }
    
    @After
    public void tearDown() throws Exception {
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ tearDown()                                              │");
        log.debug("└─────────────────────────────────────────────────────────┘");
    }

    public void isSameReply(Reply replyIn, Reply replyOut) {
        assertEquals(replyIn.getReplyNo(), replyOut.getReplyNo());
        assertEquals(replyIn.getBoardNo(), replyOut.getBoardNo());
        assertEquals(replyIn.getRegId(), replyOut.getRegId());
        assertEquals(replyIn.getReplyContents(), replyOut.getReplyContents());
        assertEquals(replyIn.getParentReply(), replyOut.getParentReply());
    }
    
    @Ignore
    @Test
    public void addAndGet() throws SQLException {       
    	int flag = replyMapper.doSave(reply01);
        assertEquals(1, flag);
        
        int replyNo = replyMapper.getLatestReplyNo();
        reply01.setReplyNo(replyNo);
        
        Reply outVO01 = replyMapper.doSelectOne(reply01);
        assertNotNull(outVO01);
        isSameReply(reply01, outVO01);
        /*
        flag = replyMapper.doSave(reply02);
        assertEquals(1, flag);
        
        flag = replyMapper.doSave(reply03);
        assertEquals(1, flag);
        */
        //flag = replyMapper.doDelete(outVO01);
       // assertEquals(1, flag);
    }
    @Ignore
    @Test
    public void doUpdate() throws SQLException {
        int flag = replyMapper.doSave(reply01);
        assertEquals(1, flag);
        
        int replyNo = replyMapper.getLatestReplyNo();
        reply01.setReplyNo(replyNo);
        
        Reply outVO01 = replyMapper.doSelectOne(reply01);
        assertNotNull(outVO01);
        
        isSameReply(reply01, outVO01);
        
        String upStr = "_U";
        outVO01.setReplyContents(outVO01.getReplyContents() + upStr);
        
        flag = replyMapper.doUpdate(outVO01);
        assertEquals(1, flag);
        
        Reply outVO01Update = replyMapper.doSelectOne(outVO01);
        assertNotNull(outVO01Update);
        
        isSameReply(outVO01Update, outVO01);
    }
    
    @Ignore
    @Test
    public void doRetrieve() throws SQLException {
        // 테스트 데이터 추가
        replyMapper.doSave(reply01);
  
        Search search = new Search();
        search.setPageNo(1);
        search.setPageSize(10);
        
        log.debug("-----------------------------");
        log.debug("-----------------------------");
        log.debug("-----------------------------");
        log.debug("-----------------------------");
        log.debug("-----------------------------");
        List<Reply> pagedList = replyMapper.doRetrieve(search);
        assertEquals(5, pagedList.size());
    }
    
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
