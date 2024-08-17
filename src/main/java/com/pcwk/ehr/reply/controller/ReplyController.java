package com.pcwk.ehr.reply.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.pcwk.ehr.reply.domain.Reply;
import com.pcwk.ehr.reply.service.ReplyService;
import com.pcwk.ehr.cmn.Message;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.cmn.StringUtil;

@Controller
@RequestMapping("reply")
public class ReplyController implements PLog {

    @Autowired
    ReplyService replyService;

    public ReplyController() {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ ReplyController()                        │");
        log.debug("└──────────────────────────────────────────┘");
    }

    // 댓글 등록
    @RequestMapping(value = "/doSave.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
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
    
    @RequestMapping(value = "/doRetrieve.do", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String doRetrieve(HttpServletRequest req) throws SQLException {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ doRetrieve()                             │");
        log.debug("└──────────────────────────────────────────┘");

        // 기본 페이징 설정
        int pageSize = Integer.parseInt(StringUtil.nvl(req.getParameter("pageSize"), "10"));
        int pageNo = Integer.parseInt(StringUtil.nvl(req.getParameter("pageNo"), "1"));
        
        // boardNo 가져오기
        String boardNo = StringUtil.nvl(req.getParameter("boardNo"), "");

        // 검색 및 페이징 처리를 위한 객체 생성
        Search search = new Search();
        search.setPageSize(pageSize);
        search.setPageNo(pageNo);
        search.setSearchDiv("10"); // boardNo로 검색
        search.setSearchWord(boardNo); // boardNo 값 설정
        
        log.debug("1. param search: " + search);

        // 댓글 목록 조회
        List<Reply> list = replyService.doRetrieve(search);

        // 총 댓글 수 계산
        int totalCnt = 0;
        if (list != null && !list.isEmpty()) {
            totalCnt = list.get(0).getTotalCnt();
        }

        // 결과를 Map에 담아 JSON으로 변환
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("list", list);
        resultMap.put("totalCnt", totalCnt);

        // Gson 라이브러리를 사용하여 Map을 JSON 문자열로 변환
        Gson gson = new Gson();
        String jsonResult = gson.toJson(resultMap);

        log.debug("2. jsonResult: " + jsonResult);

        return jsonResult;
    }
}