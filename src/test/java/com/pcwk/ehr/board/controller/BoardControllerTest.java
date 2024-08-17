package com.pcwk.ehr.board.controller;

import static org.junit.Assert.assertEquals;
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
		log.debug("┌─────────────────────────────────────────────────────────┐");
		log.debug("│ setUp()                                                 │");
		log.debug("└─────────────────────────────────────────────────────────┘");
		mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();

		// 기존 데이터 삭제
		// boardMapper.deleteAll();

		// 테스트 데이터를 생성
		board01 = new Board(213, "10", "ADMIN", "chanho", "d제목_01", "d내용_01", 0, 0, "2024-08-03", "2024-08-03");

		search = new Search();
	}

	@Ignore
	@Test
	public void doUpdate() throws Exception {
		log.debug("┌──────────────────────────────────────────┐");
		log.debug("│ *doUpdate()*                             │");
		log.debug("└──────────────────────────────────────────┘");

		// 테스트 데이터 저장
		int flag = boardMapper.doSave(board01);
		log.debug("flag:" + flag);
		assertEquals(1, flag);

		// 저장된 게시물 번호 조회
		int boardNo = boardMapper.getSequence();
		log.debug("boardNo:" + boardNo);
		board01.setBoardNo(boardNo);

		// 수정할 게시물 조회
		Board selectOneVO = boardMapper.doSelectOne(board01);

		// 수정 요청
		MockHttpServletRequestBuilder requestBuilder = MockMvcRequestBuilders.post("/board/doUpdate.do")
				.param("boardNo", selectOneVO.getBoardNo() + "").param("regId", selectOneVO.getRegId() + "_u")
				.param("title", selectOneVO.getTitle() + "_U").param("contents", selectOneVO.getContents() + "_U");

		ResultActions resultActions = mockMvc.perform(requestBuilder)
				// Controller produces = "text/plain;charset=UTF-8"
				.andExpect(MockMvcResultMatchers.content().contentType("text/plain;charset=UTF-8"))
				// Web상태
				.andExpect(status().is2xxSuccessful());

		// 수정 결과 확인
		String jsonResult = resultActions.andDo(print()).andReturn().getResponse().getContentAsString();
		;
		log.debug("┌──────────────────────────────────────────┐");
		log.debug("│ jsonResult:" + jsonResult);
		log.debug("└──────────────────────────────────────────┘");
		// json 문자열을 Message로 변환
		Message resultMessage = new Gson().fromJson(jsonResult, Message.class);
		// 비교

		log.debug("resultMessage:" + resultMessage);
	}

	@Ignore
	@Test
	public void doRetrieve() throws Exception {
		// 테스트 데이터 저장
		boardMapper.multipleSave();
		// boardMapper.doSave(board02);
		// boardMapper.doSave(board03);

		search.setPageNo(1);
		search.setPageSize(10);

		MockHttpServletRequestBuilder requestBuilder = MockMvcRequestBuilders.get("/board/doRetrieve.do")
				.param("searchWord", search.getSearchWord()).param("searchDiv", search.getSearchDiv())
				.param("pageSize", search.getPageSize() + "").param("pageNo", search.getPageNo() + "");
		// 2. 호출
		// 호출 및 결과
		ResultActions resultActions = mockMvc.perform(requestBuilder).andExpect(status().is2xxSuccessful());
		// Model
		MvcResult mvcResult = resultActions.andDo(print()).andReturn();

		Map<String, Object> modelMap = mvcResult.getModelAndView().getModel();

		List<Board> list = (List<Board>) modelMap.get("list");
		for (Board vo : list) {
			log.debug(vo);
		}

		int totalCnt = (Integer) modelMap.get("totalCnt");
		String viewName = mvcResult.getModelAndView().getViewName();

		assertEquals("board/board_list", viewName);
	}

	@Ignore
	@Test
	public void doDelete() throws Exception {
		// 테스트 데이터 저장
		int flag = boardMapper.doSave(board01);
		log.debug("flag:" + flag);
		// 저장된 게시물 번호 조회
		int boardNo = boardMapper.getSequence();
		board01.setBoardNo(boardNo);

		// 삭제 요청
		MockHttpServletRequestBuilder requestBuilder = MockMvcRequestBuilders.get("/board/doDelete.do").param("boardNo",
				board01.getBoardNo() + "");

		ResultActions resultActions = mockMvc.perform(requestBuilder)
				.andExpect(MockMvcResultMatchers.content().contentType("text/plain;charset=UTF-8"))
				.andExpect(status().is2xxSuccessful());

		String jsonResult = resultActions.andDo(print()).andReturn().getResponse().getContentAsString();

		log.debug("jsonResult:" + jsonResult);

		Message resultMessage = new Gson().fromJson(jsonResult, Message.class);

		log.debug("resultMessage:" + resultMessage);

	}

	//@Ignore
	@Test
	public void doSelectOne() throws Exception {
		// 테스트 데이터 저장
		int flag = boardMapper.doSave(board01);
		log.debug("flag:" + flag);
		// 저장된 게시물 번호 조회
		int boardNo = boardMapper.getSequence();
		board01.setBoardNo(boardNo);

		// 단일 게시물 조회 요청
		MockHttpServletRequestBuilder requestBuilder = MockMvcRequestBuilders.get("/board/doSelectOne.do")
				.param("boardNo", board01.getBoardNo() + "").param("regId", board01.getRegId());

		ResultActions resultActions = mockMvc.perform(requestBuilder)
				.andExpect(MockMvcResultMatchers.content().contentType("text/plain;charset=UTF-8"))
				.andExpect(status().is2xxSuccessful());

		String jsonResult = resultActions.andDo(print()).andReturn().getResponse().getContentAsString();
		log.debug("jsonResult:" + jsonResult);

		Gson gson = new Gson();

		Response response = gson.fromJson(jsonResult, Response.class);

		Message message = response.message;

		Board board = response.board;

		log.debug("message:" + message);
		log.debug("board:" + board);

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
		MockHttpServletRequestBuilder requestBuilder = MockMvcRequestBuilders.post("/board/doSave.do")
				.param("regId", board01.getRegId())
				.param("div", board01.getDiv())
				.param("title", board01.getTitle())
				.param("contents", board01.getContents())
				.param("nickName", board01.getNickName());

		// 호출 및 결과
		ResultActions resultActions = mockMvc.perform(requestBuilder)
				// Controller produces = "text/plain;charset=UTF-8"
				.andExpect(MockMvcResultMatchers.content().contentType("text/plain;charset=UTF-8"))
				// Web상태
				.andExpect(status().is2xxSuccessful());
		// Mock 로그: print()
		// json문자열
		String jsonResult = resultActions.andDo(print()).andReturn().getResponse().getContentAsString();
		;

		log.debug("┌──────────────────────────────────────────┐");
		log.debug("│ jsonResult:" + jsonResult);
		log.debug("└──────────────────────────────────────────┘");
		// json 문자열을 Message로 변환
		Message resultMessage = new Gson().fromJson(jsonResult, Message.class);
		// 비교
		assertEquals(1, resultMessage.getMessageId());
		assertEquals(board01.getTitle() + "이 등록되었습니다.", resultMessage.getMessageContents());
	}
}
