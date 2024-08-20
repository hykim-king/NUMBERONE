package com.pcwk.ehr.board.service;

import static org.junit.Assert.*;

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

import com.pcwk.ehr.board.domain.Board;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.mapper.BoardMapper;

@RunWith(SpringRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
                                   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"        
})
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class BoardServiceImplTest implements PLog {

    @Autowired
    ApplicationContext context;
    
    @Autowired
    BoardService boardService;
    
    @Autowired
    BoardMapper boardMapper;
    
    Board board01;
    
    @Test
    public void doSelectOne() throws Exception {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ doSelectOne()                            │");
        log.debug("└──────────────────────────────────────────┘");
        
        // 1. 데이터 입력
        // 2. boardNo 데이터 조회
        // 3. 단건조회
        // 4. 비교(readCnt++)
        
        // 1
        int flag = boardMapper.doSave(board01);
        log.debug("flag:" + flag);
        assertEquals(1, flag);        
        
        // 등록 boardNo 조회
        int boardNo = boardMapper.getLatestBoardNo();
        log.debug("boardNo:" + boardNo);
        board01.setBoardNo(boardNo);
        
        
        // 등록자 ID가 같은 경우 조회 count 증가 않됨!
        board01.setRegId(board01.getRegId() + "U");
        
        // 단건조회
        Board outVO01 = this.boardService.doSelectOne(board01);
        // readCnt++
        outVO01.setReadCnt(outVO01.getReadCnt()-1);
        
        
        isSameBoard(outVO01, board01);
    }
    
    public void isSameBoard(Board boardIn, Board boardOut) {
        assertEquals(boardIn.getBoardNo(), boardOut.getBoardNo());
        assertEquals(boardIn.getDiv(), boardOut.getDiv());
        assertEquals(boardIn.getTitle(), boardOut.getTitle());
        assertEquals(boardIn.getContents(), boardOut.getContents());
        assertEquals(boardIn.getReadCnt(), boardOut.getReadCnt());
        assertEquals(boardIn.getAskCnt(), boardOut.getAskCnt());
        //assertEquals(boardIn.getRegId(), boardOut.getRegId());

    }    
    
    @Before
    public void setUp() throws Exception {
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ setUp()                                                 │");
        log.debug("└─────────────────────────────────────────────────────────┘");
        
        // 전체 삭제       
        //boardMapper.deleteAll();
        board01 = new Board(1, "10", "ADMIN", "제목_01", "내용_01", 0, 0, "사용안함","사용안함","abc");
    }

    @After
    public void tearDown() throws Exception {
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ tearDown()                                              │");
        log.debug("└─────────────────────────────────────────────────────────┘");
    }
    
    //@Ignore
    @Test
    public void beans() {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ beans()                                  │");
        log.debug("└──────────────────────────────────────────┘");
        log.debug("context:" + context);
        log.debug("boardService:" + boardService);
        log.debug("boardMapper:" + boardMapper);
        
        assertNotNull(context);
        assertNotNull(boardService);
        assertNotNull(boardMapper);
    }
}