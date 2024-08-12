package com.pcwk.ehr.reply.controller;

import static org.junit.Assert.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.junit.After;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.google.gson.Gson;
import com.pcwk.ehr.reply.domain.Reply;
import com.pcwk.ehr.cmn.Message;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.mapper.ReplyMapper;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml",
        "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class ReplyControllerTest implements PLog {

    @Autowired
    WebApplicationContext webApplicationContext;

    MockMvc mockMvc;

    @Autowired
    ReplyMapper replyMapper;

    Reply reply01;
    Reply reply02;
    Reply reply03;
    Search search;

    @Before
    public void setUp() throws Exception {
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ setUp()                                                 │");
        log.debug("└─────────────────────────────────────────────────────────┘");

        //replyMapper.deleteAll();


        reply01 = new Reply(5, 2, "USER0002", "댓글내용 0001", 1, "사용안함", "사용안함",1);
        //reply02 = new Reply(2, 1, "userId02", "댓글내용_02", "N", "사용안함", "사용안함");
        //reply03 = new Reply(3, 2, "userId03", "댓글내용_03", "N", "사용안함", "사용안함");


        search = new Search();
        
        mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
    }

    @After
    public void tearDown() throws Exception {
        log.debug("┌─────────────────────────────────────────────────────────┐");
        log.debug("│ tearDown()                                              │");
        log.debug("└─────────────────────────────────────────────────────────┘");
    }
    
    //@Ignore
    @Test
    public void doSave() throws Exception {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ *doSave()*                               │");
        log.debug("└──────────────────────────────────────────┘");

        MockHttpServletRequestBuilder requestBuilder = MockMvcRequestBuilders.post("/reply/doSave.do")
        		//.param("boardNo", reply01.getBoardNo())
        		.param("regId", reply01.getRegId())
                .param("replyContents", reply01.getReplyContents());

        ResultActions resultActions = mockMvc.perform(requestBuilder)
                .andExpect(MockMvcResultMatchers.content().contentType("text/plain;charset=UTF-8"))
                .andExpect(status().is2xxSuccessful());

        String jsonResult = resultActions.andDo(print())
                .andReturn()
                .getResponse().getContentAsString();

        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ jsonResult:" + jsonResult);
        log.debug("└──────────────────────────────────────────┘");

        Message resultMessage = new Gson().fromJson(jsonResult, Message.class);
        assertEquals(1, resultMessage.getMessageId());
        assertEquals("댓글이 등록되었습니다.", resultMessage.getMessageContents());
    }
    
    @Ignore
    @Test
    public void doUpdate() throws Exception {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ *doUpdate()*                             │");
        log.debug("└──────────────────────────────────────────┘");

        int flag = replyMapper.doSave(reply01);
        assertEquals(1, flag);

       


        MockHttpServletRequestBuilder requestBuilder = MockMvcRequestBuilders.post("/reply/doUpdate.do")
                .param("replyNo", reply01.getReplyNo() + "")
                .param("boardNo", reply01.getBoardNo() + "")
                .param("replyContents", reply01.getReplyContents() + "_U")
                .param("replyRecon", "Y");

        ResultActions resultActions = mockMvc.perform(requestBuilder)
                .andExpect(MockMvcResultMatchers.content().contentType("text/plain;charset=UTF-8"))
                .andExpect(status().is2xxSuccessful());

        String jsonResult = resultActions.andDo(print())
                .andReturn()
                .getResponse().getContentAsString();

        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ jsonResult:" + jsonResult);
        log.debug("└──────────────────────────────────────────┘");

        Message resultMessage = new Gson().fromJson(jsonResult, Message.class);
        assertEquals(1, resultMessage.getMessageId());
        assertEquals("댓글이 수정되었습니다.", resultMessage.getMessageContents());
    }
    
    @Ignore
    @Test
    public void doDelete() throws Exception {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ *doDelete()*                             │");
        log.debug("└──────────────────────────────────────────┘");

        int flag = replyMapper.doSave(reply01);


        MockHttpServletRequestBuilder requestBuilder = MockMvcRequestBuilders.get("/reply/doDelete.do")
                .param("replyNo", reply01.getReplyNo() + "");

        ResultActions resultActions = mockMvc.perform(requestBuilder)
                .andExpect(MockMvcResultMatchers.content().contentType("text/plain;charset=UTF-8"))
                .andExpect(status().is2xxSuccessful());

        String jsonResult = resultActions.andDo(print())
                .andReturn()
                .getResponse().getContentAsString();

        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ jsonResult:" + jsonResult);
        log.debug("└──────────────────────────────────────────┘");

        Message resultMessage = new Gson().fromJson(jsonResult, Message.class);
        assertEquals(1, resultMessage.getMessageId());
        assertEquals("댓글이 삭제되었습니다.", resultMessage.getMessageContents());
    }
    
    @Ignore
    @Test
    public void doRetrieve() throws Exception {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ *doRetrieve()*                           │");
        log.debug("└──────────────────────────────────────────┘");

        replyMapper.doSave(reply01);
        //replyMapper.doSave(reply02);
        //replyMapper.doSave(reply03);

        search.setPageNo(1);
        search.setPageSize(10);

        MockHttpServletRequestBuilder requestBuilder = MockMvcRequestBuilders.get("/reply/doRetrieve.do")
                .param("pageSize", search.getPageSize() + "")
                .param("pageNo", search.getPageNo() + "");

        ResultActions resultActions = mockMvc.perform(requestBuilder)
                .andExpect(status().is2xxSuccessful());

        MvcResult mvcResult = resultActions.andDo(print()).andReturn();

        Map<String, Object> modelMap = mvcResult.getModelAndView().getModel();

        @SuppressWarnings("unchecked")
        List<Reply> list = (List<Reply>) modelMap.get("list");
        for (Reply vo : list) {
            log.debug(vo.toString());
        }

        int totalCnt = (Integer) modelMap.get("totalCnt");
        String viewName = mvcResult.getModelAndView().getViewName();

        assertEquals(1, totalCnt);
        assertEquals("reply/reply_list", viewName);
    }
    @Ignore
    @Test
    public void beans() {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ beans()                                  │");
        log.debug("└──────────────────────────────────────────┘");

        log.debug("webApplicationContext:" + webApplicationContext);
        log.debug("mockMvc:" + mockMvc);
        assertNotNull(webApplicationContext);
        assertNotNull(mockMvc);
    }
}
