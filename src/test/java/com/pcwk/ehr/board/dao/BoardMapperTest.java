package com.pcwk.ehr.board.dao;

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

import com.pcwk.ehr.board.domain.Board;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.mapper.BoardMapper;

@RunWith(SpringRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
                                   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"        
})
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class BoardMapperTest implements PLog {

    @Autowired
    ApplicationContext context;
    
    @Autowired
    BoardMapper boardMapper;
    
    Board board01;
    Board board02;
    Board board03;
    
    Search search;

    @Before
    public void setUp() throws Exception {
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ setUp()                                                 │");
        log.debug("└─────────────────────────────────────────────────────────┘");
        
        board01 = new Board(213, "10", "ADMIN","chanho", "d제목_01", "d내용_01", 0, 0, "2024-08-03", "2024-08-03");
        board02 = new Board(213, "20", "ADMIN","chanho", "d제목_01", "d내용_01", 0, 0, "2024-08-03", "2024-08-03");
        board03 = new Board(213, "30", "ADMIN","chanho", "d제목_01", "d내용_01", 0, 0, "2024-08-03", "2024-08-03");
        
        boardMapper.deleteAll();
        search = new Search();
    }

    @After
    public void tearDown() throws Exception {
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ tearDown()                                              │");
        log.debug("└─────────────────────────────────────────────────────────┘");
    }

    public void isSameBoard(Board boardIn, Board boardOut) {
        assertEquals(boardIn.getBoardNo(), boardOut.getBoardNo());
        assertEquals(boardIn.getTitle(), boardOut.getTitle());
        assertEquals(boardIn.getContents(), boardOut.getContents());
        assertEquals(boardIn.getAskCnt(), boardOut.getAskCnt());
        assertEquals(boardIn.getReadCnt(), boardOut.getReadCnt());
    }
    @Ignore	
    @Test
    public void doRetrieve() throws SQLException {
        boardMapper.multipleSave();
        
        search.setPageNo(1);
        search.setPageSize(10);
        
        List<Board> list = boardMapper.doRetrieve(search);
        assertEquals(10, list.size());        
    }
    
    //@Ignore
    @Test
    public void doUpdate() throws SQLException {
        int flag = boardMapper.doSave(board01);
        log.debug("flag:"+flag);
        
        int seq = boardMapper.getSequence();
        log.debug("seq:"+seq);
        board01.setBoardNo(seq);
        
        Board outVO01 = boardMapper.doSelectOne(board01);
        log.debug("outVO01:"+outVO01);
        
        String upStr = "_U";
        outVO01.setTitle(outVO01.getTitle()+upStr);
        outVO01.setContents(outVO01.getContents()+upStr);
        outVO01.setReadCnt(1);
      
        flag = boardMapper.doUpdate(outVO01);
        log.debug("flag:"+flag);
        
        Board outVO01Update = boardMapper.doSelectOne(outVO01);
        log.debug("outVO01Update:"+outVO01Update);
     
    }
    @Ignore
    @Test
    public void addAndGet() throws SQLException {
        int flag = boardMapper.doSave(board01);
        assertEquals(1, flag);
        
        int boardNo = boardMapper.getLatestBoardNo();
        board01.setBoardNo(boardNo);
 
    }
    @Ignore
    @Test
    public void readCntUpdate() throws SQLException {
        
    	int flag = boardMapper.doSave(board01);
        log.debug("flag:"+flag);
    	
    	int seq = boardMapper.getSequence();
        board01.setBoardNo(seq);
        log.debug("seq:"+seq);
        
        board01.setRegId(board01.getRegId()+"_U");
       
        
        Board outVO01 = this.boardMapper.doSelectOne(board01);
        outVO01.setReadCnt(outVO01.getReadCnt());
        
       isSameBoard(outVO01,board01);
        
    }
    
    @Ignore
    @Test
    public void askCntUpdate() throws SQLException {
        boardMapper.doSave(board01);
        int boardNo = boardMapper.getLatestBoardNo();
        board01.setBoardNo(boardNo);
        
        int beforeAskCnt = board01.getAskCnt();
        int flag = boardMapper.askCntUpdate(board01);
        assertEquals(1, flag);
        
        Board updatedBoard = boardMapper.doSelectOne(board01);
        assertEquals(beforeAskCnt + 1, updatedBoard.getAskCnt());
    }
    
    @Ignore
    @Test
    public void beans() {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ beans()                                  │");
        log.debug("└──────────────────────────────────────────┘");
        log.debug("context:" + context);
        log.debug("boardMapper:" + boardMapper);
        
        assertNotNull(context);
        assertNotNull(boardMapper);
    }
}