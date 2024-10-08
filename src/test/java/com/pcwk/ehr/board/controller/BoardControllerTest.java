package com.pcwk.ehr.board.controller;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.google.gson.Gson;
import com.pcwk.ehr.board.controller.BoardControllerTest.Response;
import com.pcwk.ehr.board.domain.Board;
import com.pcwk.ehr.mapper.BoardMapper;
import com.pcwk.ehr.cmn.Message;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.cmn.Search;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml",
        "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
public class BoardControllerTest implements PLog {

    @Autowired
    WebApplicationContext webApplicationContext;

    MockMvc mockMvc;

    @Autowired
    BoardMapper boardMapper;

    Board board01;
    Board board02;
    Board board03;

    Search search;
    
    static class Response {
        Board board;
        Message message;
    }

    @Before
    public void setUp() throws Exception {
        mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();

        // 기존 데이터 삭제
        //boardMapper.deleteAll();

        // 테스트 데이터를 생성
        board01 = new Board(1, "10", "ADMIN", "d제목_02", "d내용_02", 0, 0, "2024-08-16", "2024-08-16","abc");
        //board02 = new Board(2, "ADMIN", "제목_02", "내용_02", 0, 0, "2024-08-03", "2024-08-03");
        //board03 = new Board(3, "ADMIN", "제목_03", "내용_03", 0, 0, "2024-08-03", "2024-08-03");

        search = new Search();
    }
    
    //@Ignore
    @Test
    public void doUpdate() throws Exception {    	
    	log.debug("┌──────────────────────────────────────────┐");
		log.debug("│ *doUpdate()*                             │");
		log.debug("└──────────────────────────────────────────┘");	
		
        // 테스트 데이터 저장
        int flag = boardMapper.doSave(board01);
        log.debug("flag:"+flag);
		assertEquals(1, flag);
        
        // 저장된 게시물 번호 조회
        int boardNo = boardMapper.getLatestBoardNo();
        log.debug("BoardNo:"+boardNo);
        board01.setBoardNo(boardNo);
        
        // 수정할 게시물 조회
        Board selectOneVO = boardMapper.doSelectOne(board01);
        
        // 수정 요청
        MockHttpServletRequestBuilder requestBuilder = post("/board/doUpdate.do")
            .param("boardNo", selectOneVO.getBoardNo() + "")
            .param("div", selectOneVO.getDiv()) 
            .param("title", selectOneVO.getTitle() + "_U")
            .param("contents", selectOneVO.getContents() + "_U")
            .param("regId", selectOneVO.getRegId());

        ResultActions resultActions = mockMvc.perform(requestBuilder)
        		//Controller produces =  "text/plain;charset=UTF-8"
				.andExpect(MockMvcResultMatchers.content().contentType("text/plain;charset=UTF-8"))
				//Web상태
				.andExpect(status().is2xxSuccessful());	

        // 수정 결과 확인
        String jsonResult=resultActions.andDo(print())
				.andReturn()
				.getResponse().getContentAsString();
				;
				log.debug("┌──────────────────────────────────────────┐");
				log.debug("│ jsonResult:"+jsonResult);
				log.debug("└──────────────────────────────────────────┘");							
				//json 문자열을 Message로 변환
				Message resultMessage=new Gson().fromJson(jsonResult, Message.class);
				//비교
				assertEquals(1, resultMessage.getMessageId());
				//assertEquals(board01.getTitle()+"이 수정되었습니다.",resultMessage.getMessageContents());
    }
    
    @Ignore
    @Test
    public void doRetrieve() throws Exception {
        // 테스트 데이터 저장
        boardMapper.doSave(board01);
        //boardMapper.doSave(board02);
        //boardMapper.doSave(board03);

        search.setPageNo(1);
		search.setPageSize(10);
		
		MockHttpServletRequestBuilder requestBuilder
						= MockMvcRequestBuilders.get("/board/doRetrieve.do")
								.param("searchDiv", search.getSearchDiv())
								.param("searchWord", search.getSearchWord())
								.param("pageSize", search.getPageSize()+"")
								.param("pageNo", search.getPageNo()+"")
								;
		//2. 호출
		//호출 및 결과 
		ResultActions resultActions = mockMvc.perform(requestBuilder)
				.andExpect(status().is2xxSuccessful());		
		//Model
		MvcResult mvcResult = resultActions.andDo(print()).andReturn();
		
		Map<String, Object> modelMap = mvcResult.getModelAndView().getModel();
		
		List<Board> list = (List<Board>) modelMap.get("list");
		for(Board vo   :list) {
			log.debug(vo);
		}
		
		int totalCnt =(Integer)modelMap.get("totalCnt");
		String viewName = mvcResult.getModelAndView().getViewName();
		
		// user/user_list
		//assertEquals(213, totalCnt);
		assertEquals("board/board_list", viewName);
    }
    
    @Ignore
    @Test
    public void doDelete() throws Exception {
        // 테스트 데이터 저장
        boardMapper.doSave(board01);
        
        // 저장된 게시물 번호 조회
        int boardNo = boardMapper.getLatestBoardNo();
        board01.setBoardNo(boardNo);

        // 삭제 요청
        MockHttpServletRequestBuilder requestBuilder = get("/board/doDelete.do")
            .param("boardNo", board01.getBoardNo() + "");

        mockMvc.perform(requestBuilder)
            .andExpect(status().isOk());
    }
    
    @Ignore	
	@Test
	public void doSelectOne() throws Exception{
		log.debug("┌──────────────────────────────────────────┐");
		log.debug("│ *doSelectOne()*                          │");
		log.debug("└──────────────────────────────────────────┘");			
		
		//1
		int flag = boardMapper.doSave(board01);
		log.debug("flag:"+flag);
		assertEquals(1, flag);
		
		//2		
		int boardNo = boardMapper.getLatestBoardNo();
		log.debug("boardNo:"+boardNo);
		board01.setBoardNo(boardNo);
		
		MockHttpServletRequestBuilder requestBuilder
		= MockMvcRequestBuilders.get("/board/doSelectOne.do")
		.param("boardNo", board01.getBoardNo()+"")
		.param("regId", board01.getRegId())
		;			
		
		//호출 및 결과 
		ResultActions resultActions = mockMvc.perform(requestBuilder)
				//Controller produces =  "text/plain;charset=UTF-8"
				.andExpect(MockMvcResultMatchers.content().contentType("text/plain;charset=UTF-8"))
				//Web상태
				.andExpect(status().is2xxSuccessful());		
		//Mock 로그: print()
		//json문자열 
		String jsonResult=resultActions.andDo(print())
							.andReturn()
							.getResponse().getContentAsString();
							;
     							
		log.debug("┌──────────────────────────────────────────┐");
		log.debug("│ jsonResult:"+jsonResult);
		log.debug("└──────────────────────────────────────────┘");
        // Gson 객체 생성
        Gson gson = new Gson();
        
        // 전체 JSON 파싱
        Response response = gson.fromJson(jsonResult, Response.class);

        // message 객체 추출
        Message message = response.message;

        // Board 객체 추출
        Board board = response.board;        
        // message 객체 출력
        log.debug("Message : " + message);	
        log.debug("Board : " + board);	
        
        assertEquals(1, message.getMessageId());
        assertEquals(board.getTitle()+" 이 조회 되었습니다.", message.getMessageContents());
        
        isSameBoard(board,board01);
	}

    public void isSameBoard(Board boardIn, Board boardOut) {
        assertEquals(boardIn.getBoardNo(), boardOut.getBoardNo());
        assertEquals(boardIn.getRegId(), boardOut.getRegId());
        assertEquals(boardIn.getTitle(), boardOut.getTitle());
        assertEquals(boardIn.getContents(), boardOut.getContents());
        assertEquals(boardIn.getAskCnt(), boardOut.getAskCnt());
        assertEquals(boardIn.getReadCnt(), boardOut.getReadCnt());
    }
    
    @Ignore
    @Test
    public void doSave() throws Exception {
        // 게시물 저장 요청
        MockHttpServletRequestBuilder requestBuilder = post("/board/doSave.do")
        		.param("div", board01.getDiv()) 
        		.param("title", board01.getTitle())
        		.param("contents", board01.getContents())
        		.param("regId", board01.getRegId());           
                

      //호출 및 결과 
      		ResultActions resultActions = mockMvc.perform(requestBuilder)
      				//Controller produces =  "text/plain;charset=UTF-8"
      				.andExpect(MockMvcResultMatchers.content().contentType("text/plain;charset=UTF-8"))
      				//Web상태
      				.andExpect(status().is2xxSuccessful());		
      		//Mock 로그: print()
      		//json문자열 
      		String jsonResult=resultActions.andDo(print())
      							.andReturn()
      							.getResponse().getContentAsString();
      							;
      							
      		log.debug("┌──────────────────────────────────────────┐");
      		log.debug("│ jsonResult:"+jsonResult);
      		log.debug("└──────────────────────────────────────────┘");							
      		//json 문자열을 Message로 변환
      		Message resultMessage=new Gson().fromJson(jsonResult, Message.class);
      		//비교
      		assertEquals(1, resultMessage.getMessageId());
      		assertEquals(board01.getTitle()+"이 등록되었습니다.",resultMessage.getMessageContents());
    }
    
    @Test
	public void beans() {
		log.debug("┌──────────────────────────────────────────┐");
		log.debug("│ beans()                                  │");
		log.debug("└──────────────────────────────────────────┘");	
		
		log.debug("webApplicationContext:"+webApplicationContext);
		log.debug("mockMvc:"+mockMvc);
		assertNotNull(webApplicationContext);
		assertNotNull(mockMvc);
	}
}
