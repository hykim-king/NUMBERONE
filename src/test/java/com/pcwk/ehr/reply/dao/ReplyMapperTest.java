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
    
    Reply reply01;
    Reply reply02;
    Reply reply03;
    

    @Before
    public void setUp() throws Exception {
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ setUp()                                                 │");
        log.debug("└─────────────────────────────────────────────────────────┘");        
        
        reply01 = new Reply(1,1,"chanho","안녕하세요",15,"사용안함","사용안함",1);
        reply02 = new Reply(2,2,"chanho","안녕하세요",15,"사용안함","사용안함",1);
        reply03 = new Reply(3,1,"chanho","안녕하세요",13,"사용안함","사용안함",2);
        //replyMapper.deleteAll();
        
        search = new Search();

        //reply01 = new Reply(5, 2, "USER0002", "댓글내용 0005", 1, "사용안함", "사용안함");
        //reply02 = new Reply(3, 4, "userId02", "댓글내용_02", 34, "사용안함", "사용안함");
        //reply03 = new Reply(5, 6, "userId03", "댓글내용_03", 56, "사용안함", "사용안함");
       
        replyMapper.deleteAll();       

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
    public void doSave() throws Exception{
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ doSave()                                                │");
        log.debug("└─────────────────────────────────────────────────────────┘");    	
    	
        int flag = replyMapper.doSave(reply01);
        log.debug("flag:"+flag);
        
        int seq = replyMapper.getSequence();
        log.debug("seq:"+seq);
        reply01.setReplyNo(seq);
        
        

        Reply outVO01 = replyMapper.doSelectOne(reply01);
        assertNotNull(outVO01);
        isSameReply(reply01, outVO01);
        
        /*
>>>>>>> main
        flag = replyMapper.doSave(reply02);
        
        seq = replyMapper.getSequence();
        
        flag = replyMapper.doSave(reply03);
<<<<<<< HEAD
        seq = replyMapper.getSequence();
    
    }
    
    public void isSameReply(Reply replyIn, Reply replyOut) {
    	assertEquals(replyIn.getReplyNo(), replyOut.getReplyNo());
    	assertEquals(replyIn.getRegId(), replyOut.getRegId());
    	assertEquals(replyIn.getReplyContents(), replyOut.getReplyContents());
    	
    }
    //@Ignore
=======
        assertEquals(1, flag);
        */
        //flag = replyMapper.doDelete(outVO01);
        //assertEquals(1, flag);
    }
    @Ignore
    @Test
    public void doSelectOne() throws Exception{
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ doSelectOne()                                           │");
        log.debug("└─────────────────────────────────────────────────────────┘");    	
    	  
        Reply outVO01 = replyMapper.doSelectOne(reply01);
        log.debug("outVO01:"+outVO01);
        
    	
    }
    
    //@Ignore
    @Test
    public void doUpdate() throws Exception{
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ doUpdate()                                              │");
        log.debug("└─────────────────────────────────────────────────────────┘");    	
    	    	
    	Reply outVO01 = replyMapper.doSelectOne(reply01);
    	log.debug("outVO01:"+outVO01);
        
    	isSameReply(reply01,outVO01);
    	
    	String upStr = "_ss";
    	outVO01.setReplyContents(outVO01.getReplyContents()+upStr);
    
    	int flag = replyMapper.doUpdate(outVO01);
    	log.debug("flag:"+flag);
    	
    	Reply outVO01Update = replyMapper.doSelectOne(outVO01);
    	log.debug("outVO01Update:"+outVO01Update);
    }
    @Ignore
    @Test
    public void doDelete() throws Exception{
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ doDelete()                                              │");
        log.debug("└─────────────────────────────────────────────────────────┘");    	
    	
        int flag = replyMapper.doDelete(reply01);
        log.debug("flag:"+flag);
        
    }
    
    @Ignore
    @Test
    public void doRetrieve() throws Exception {
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ doRetrieve()                                          │");
        log.debug("└─────────────────────────────────────────────────────────┘");   	

        search.setPageNo(1);
        search.setPageSize(10);

        List<Reply> replyList = replyMapper.doRetrieve(search);
  

			log.debug(replyList);

        //search.setSearchDiv("10");
        //search.setSearchWord("2");
        
        log.debug("-----------------------------");
        log.debug("-----------------------------");
        log.debug("-----------------------------");
        log.debug("-----------------------------");
        log.debug("-----------------------------");
        List<Reply> pagedList = replyMapper.doRetrieve(search);
        //assertEquals(1, pagedList.size());
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
