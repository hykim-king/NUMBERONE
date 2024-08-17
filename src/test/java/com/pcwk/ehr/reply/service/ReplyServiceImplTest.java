package com.pcwk.ehr.reply.service;

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
import com.pcwk.ehr.mapper.ReplyMapper;

@RunWith(SpringRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
                                   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"        
})

public class ReplyServiceImplTest implements PLog {

    @Autowired
    ApplicationContext context;
    
    @Autowired
    ReplyService replyService;
    
    @Autowired
    ReplyMapper replyMapper;
    
    Reply reply01;
    
    @Before
    public void setUp() throws Exception {
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ setUp()                                                 │");
        log.debug("└─────────────────────────────────────────────────────────┘");
        
        // 초기 테스트 데이터 설정
        replyMapper.deleteAll();
        reply01 = new Reply(1,2104,"admin","chanho","안녕하세요",0,"사용안함","사용안함",1);

    }

    @After
    public void tearDown() throws Exception {
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ tearDown()                                              │");
        log.debug("└─────────────────────────────────────────────────────────┘");
    }
    
    @Ignore
    @Test
    public void doSelectOne() throws SQLException {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ doSelectOne()                            │");
        log.debug("└──────────────────────────────────────────┘");
        
        // 1. 데이터 입력 
        int flag = replyMapper.doSave(reply01);
        log.debug("flag:" + flag);
        assertEquals(1, flag);
        
        // 2. 단건 조회
        Reply outVO = this.replyService.doSelectOne(reply01);
        log.debug("outVO:" + outVO);
        
        // 3. 비교
        assertNotNull(outVO);
        isSameReply(outVO, reply01);
    }

    public void isSameReply(Reply replyIn, Reply replyOut) {
        assertEquals(replyIn.getReplyNo(), replyOut.getReplyNo());
        assertEquals(replyIn.getBoardNo(), replyOut.getBoardNo());
        assertEquals(replyIn.getRegId(), replyOut.getRegId());
        assertEquals(replyIn.getReplyContents(), replyOut.getReplyContents());
        //assertEquals(replyIn.getRegDt(), replyOut.getRegDt());
       // assertEquals(replyIn.getModDt(), replyOut.getModDt());
        assertEquals(replyIn.getNickName(), replyOut.getNickName());
    }
    
    //@Ignore
    @Test
    public void doSave() throws SQLException {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ doSave()                                 │");
        log.debug("└──────────────────────────────────────────┘");
        
        // 댓글 저장
        int flag = replyMapper.doSave(reply01);
        log.debug("flag:" + flag);
        assertEquals(1, flag);
    }
    
    @Ignore
    @Test
    public void doDelete() throws SQLException {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ doDelete()                               │");
        log.debug("└──────────────────────────────────────────┘");
        
        // 댓글 삭제
        int flag = replyMapper.doSave(reply01);
        assertEquals(1, flag);
        
        flag = replyMapper.doDelete(reply01);
        assertEquals(1, flag);
    }
    
    @Ignore
    @Test
    public void doUpdate() throws SQLException {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ doUpdate()                               │");
        log.debug("└──────────────────────────────────────────┘");
        
        // 댓글 저장 후 수정
        int flag = replyMapper.doSave(reply01);
        assertEquals(1, flag);
        
        // 수정할 내용 설정
        reply01.setReplyContents("수정된 댓글 내용");
        flag = replyMapper.doUpdate(reply01);
        assertEquals(1, flag);
        
        // 수정된 데이터 확인
        Reply updatedReply = replyService.doSelectOne(reply01);
        assertEquals("수정된 댓글 내용", updatedReply.getReplyContents());
    }
    
    @Ignore
    @Test
    public void beans() {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ beans()                                  │");
        log.debug("└──────────────────────────────────────────┘");
        log.debug("context:" + context);
        log.debug("replyService:" + replyService);
        log.debug("replyMapper:" + replyMapper);
        
        assertNotNull(context);
        assertNotNull(replyService);
        assertNotNull(replyMapper);
    }
}
