package com.pcwk.ehr.reply.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.GsonBuilder;
import com.pcwk.ehr.reply.domain.Reply;
import com.pcwk.ehr.reply.service.ReplyService;
import com.pcwk.ehr.cmn.Message;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.code.service.CodeService;
import com.pcwk.ehr.markdown.service.MarkdownService;

@Controller
@RequestMapping("reply")
public class ReplyController implements PLog {

    @Autowired
    ReplyService replyService;
    
    @Autowired
    CodeService codeService;
    
    @Autowired
    MarkdownService markdownService;
    

    public ReplyController() {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ ReplyController()                        │");
        log.debug("└──────────────────────────────────────────┘");
    }

    // 댓글 등록
    @RequestMapping(value = "/doSave.do", 
    			 method = RequestMethod.POST,
    			 produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String doSave(Reply inVO) throws SQLException {
        log.debug("1. param inVO: " + inVO);

        int flag = replyService.doSave(inVO);
        String message = "";

        if (1 == flag) {
            message = "댓글이 등록되었습니다.";
        } else {
            message = "댓글 등록 실패!";
        }

        Message messageObj = new Message(flag, message);
        String jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(messageObj);
        log.debug("2. jsonString: " + jsonString);

        return jsonString;
    }

    // 댓글 수정
    @RequestMapping(value = "/doUpdate.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String doUpdate(Reply inVO) throws SQLException {
    	String jsonString = "";
    	log.debug("1. param inVO: " + inVO);

        int flag = replyService.doUpdate(inVO);
        String message = "";

        if (1 == flag) {
            message = "댓글이 수정되었습니다.";
        } else {
            message = "댓글 수정 실패!";
        }

        Message messageObj = new Message(flag, message);
        jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(messageObj);
        log.debug("2. jsonString: " + jsonString);

        return jsonString;
    }

    // 댓글 삭제
    @RequestMapping(value = "/doDelete.do", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String doDelete(Reply inVO) throws SQLException {
        log.debug("1. param inVO: " + inVO);

        int flag = replyService.doDelete(inVO);
        String message = "";

        if (1 == flag) {
            message = "댓글이 삭제되었습니다.";
        } else {
            message = "댓글 삭제 실패!";
        }

        Message messageObj = new Message(flag, message);
        String jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(messageObj);
        log.debug("2. jsonString: " + jsonString);

        return jsonString;
    }
    
    @RequestMapping(value = "/doRetrieve.do", 
    			   method = RequestMethod.GET
    			   ,produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String doRetrieve(@RequestParam String boardNo,
    			             @RequestParam(required = false, defaultValue = "10") int pageSize,
    			             @RequestParam(required = false, defaultValue = "1") int pageNo) throws SQLException {
        
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ doRetrieve()                             │");
        log.debug("└──────────────────────────────────────────┘");

        // 기본 페이징 설정
         //Integer.parseInt(StringUtil.nvl(String.valueOf(inVO.getPageSize()), "10"));
        //Integer.parseInt(StringUtil.nvl(String.valueOf(inVO.getPageNo()), "1"));

        // 검색 조건
        String searchWord = boardNo; //StringUtil.nvl(String.valueOf(inVO.getBoardNo()), "");

        // 검색 및 페이징 처리를 위한 객체 생성
        Search search = new Search();
        search.setPageSize(pageSize);
        search.setPageNo(pageNo);
        search.setSearchWord(searchWord);
        search.setSearchDiv("10");
        
        log.debug("1. param search: " + search);

        // 댓글 목록 조회
        List<Reply> list = replyService.doRetrieve(search);
        
        String jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(list); 
        
        return jsonString;
    }
}