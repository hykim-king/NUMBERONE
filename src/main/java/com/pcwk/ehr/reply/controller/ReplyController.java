package com.pcwk.ehr.reply.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.pcwk.ehr.reply.domain.Reply;
import com.pcwk.ehr.reply.service.ReplyService;
import com.pcwk.ehr.board.domain.Board;
import com.pcwk.ehr.board.service.BoardService;
import com.pcwk.ehr.cmn.Message;
import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.member.domain.Member;

@Controller
@RequestMapping("reply")
public class ReplyController {

    @Autowired
    ReplyService replyService;
    
    @Autowired
    BoardService boardService;

    // 댓글 등록
    @RequestMapping(value = "/doSave.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String doSave(Reply inVO, HttpSession session) throws SQLException {
        Member member = (Member) session.getAttribute("member");
        if (member == null) {
            return new GsonBuilder().setPrettyPrinting().create().toJson(new Message(0, "로그인이 필요합니다."));
        }

        inVO.setRegId(member.getMemberId());
        inVO.setNickname(member.getNickname());

        if (inVO.getParentReply() != 0) {
            inVO.setReplyLevel(1);
        } else {
            inVO.setParentReply(0);
            inVO.setReplyLevel(0);
        }    

        // null 체크 추가
        if (inVO.getReplyContents() == null || inVO.getReplyContents().trim().isEmpty()) {
            return new GsonBuilder().setPrettyPrinting().create().toJson(new Message(0, "댓글 내용을 입력해주세요."));
        }

        int flag = replyService.doSave(inVO);
        String message = (flag == 1) ? "댓글이 등록되었습니다." : "댓글 등록 실패!";

        if (flag == 1) {
            Board board = new Board();
            board.setBoardNo(inVO.getBoardNo());
            boardService.askCntUpdate(board);
        }

        return new GsonBuilder().setPrettyPrinting().create().toJson(new Message(flag, message));
    }

    // 댓글 수정
    @RequestMapping(value = "/doUpdate.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String doUpdate(Reply inVO, HttpSession session) throws SQLException {
        Member member = (Member) session.getAttribute("member");
        if (member == null) {
            return new GsonBuilder().setPrettyPrinting().create().toJson(new Message(0, "로그인이 필요합니다."));
        }

        Reply originalReply = replyService.doSelectOne(inVO);
        if (!member.getMemberId().equals(originalReply.getRegId())) {
            return new GsonBuilder().setPrettyPrinting().create().toJson(new Message(0, "수정 권한이 없습니다."));
        }

        int flag = replyService.doUpdate(inVO);
        String message = (flag == 1) ? "댓글이 수정되었습니다." : "댓글 수정 실패!";

        return new GsonBuilder().setPrettyPrinting().create().toJson(new Message(flag, message));
    }

    // 댓글 삭제
    @RequestMapping(value = "/doDelete.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String doDelete(@RequestParam("replyNo") int replyNo, HttpSession session) throws SQLException {
        Member member = (Member) session.getAttribute("member");
        if (member == null) {
            return new GsonBuilder().setPrettyPrinting().create().toJson(new Message(0, "로그인이 필요합니다."));
        }

        Reply inVO = new Reply();
        inVO.setReplyNo(replyNo);
        Reply replyToDelete = replyService.doSelectOne(inVO);

        if (!member.getMemberId().equals(replyToDelete.getRegId())) {
            return new GsonBuilder().setPrettyPrinting().create().toJson(new Message(0, "삭제 권한이 없습니다."));
        }

        int flag = replyService.doDelete(inVO);
        String message = (flag == 1) ? "댓글이 삭제되었습니다." : "댓글 삭제 실패!";

        if (flag == 1) {
            Board board = new Board();
            board.setBoardNo(replyToDelete.getBoardNo());
            boardService.askCntUpdate(board);
        }

        return new GsonBuilder().setPrettyPrinting().create().toJson(new Message(flag, message));
    }
    
    // 댓글 조회 (세션 체크 제거)
    @RequestMapping(value = "/doRetrieve.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String doRetrieve(HttpServletRequest req) throws SQLException {
        int pageSize = Integer.parseInt(StringUtil.nvl(req.getParameter("pageSize"), "50"));
        int pageNo = Integer.parseInt(StringUtil.nvl(req.getParameter("pageNo"), "1"));
        String searchWord = StringUtil.nvl(req.getParameter("searchWord"), "");

        Search search = new Search();
        search.setPageSize(pageSize);
        search.setPageNo(pageNo);
        search.setSearchDiv("10");
        search.setSearchWord(searchWord);

        List<Reply> list = replyService.doRetrieve(search);
        
        int totalCnt = (list != null && !list.isEmpty()) ? list.get(0).getTotalCnt() : 0;

        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("list", list);
        resultMap.put("totalCnt", totalCnt);

        return new Gson().toJson(resultMap);
    }
}