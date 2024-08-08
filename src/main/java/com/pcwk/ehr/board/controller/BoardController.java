package com.pcwk.ehr.board.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.GsonBuilder;
import com.pcwk.ehr.board.domain.Board;
import com.pcwk.ehr.board.service.BoardService;
import com.pcwk.ehr.cmn.Message;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.markdown.service.MarkdownService;

@Controller
@RequestMapping("board")
public class BoardController implements PLog {

    @Autowired
    BoardService boardService;

    @Autowired
    MarkdownService markdownService;

    public BoardController() {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ BoardController()                        │");
        log.debug("└──────────────────────────────────────────┘");
    }

    // 게시물 등록 화면으로 이동
    @RequestMapping(value = "/moveToReg.do", method = RequestMethod.GET)
    public String moveToReg(Board inVO, Model model) throws SQLException {
        String viewName = "board/board_reg";
        log.debug("1. param inVO: " + inVO);
        model.addAttribute("board", inVO);

        return viewName;
    }

    // 게시물 수정
    @RequestMapping(value = "/doUpdate.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String doUpdate(Board inVO) throws SQLException {
        log.debug("1. param inVO: " + inVO);

        // 실제 수정자 ID 및 수정일 설정 (수정일은 현재 날짜로 설정)
        inVO.setModDt(StringUtil.nvl(inVO.getModDt(), "2024-08-03"));

        int flag = boardService.doUpdate(inVO);
        String message = "";

        if (1 == flag) {
            message = inVO.getTitle() + "이 수정되었습니다.";
        } else {
            message = inVO.getTitle() + " 수정 실패!";
        }

        Message messageObj = new Message(flag, message);
        String jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(messageObj);
        log.debug("2. jsonString: " + jsonString);

        return jsonString;
    }

    // 게시물 목록 조회
    @RequestMapping(value = "/doRetrieve.do", method = RequestMethod.GET)
    public String doRetrieve(Model model, HttpServletRequest req) throws SQLException {
        String viewName = "board/board_list";
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ doRetrieve()                             │");
        log.debug("└──────────────────────────────────────────┘");

        // 기본 페이징 설정
        int pageSize = Integer.parseInt(StringUtil.nvl(req.getParameter("pageSize"), "10"));
        int pageNo = Integer.parseInt(StringUtil.nvl(req.getParameter("pageNo"), "1"));

        // 검색 조건
        String searchWord = StringUtil.nvl(req.getParameter("searchWord"), "");

        // 검색 및 페이징 처리를 위한 객체 생성
        Search search = new Search();

        log.debug("1. param search: " + search);

        // 게시물 목록 조회
        List<Board> list = boardService.doRetrieve(search);

        model.addAttribute("list", list); // 조회 결과를 모델에 추가

        int totalCnt = 0;
        if (list != null && list.size() > 0) {
            totalCnt = list.get(0).getTotalCnt();
        }
        model.addAttribute("totalCnt", totalCnt); // 총 게시물 수를 모델에 추가

        return viewName;
    }

    // 게시물 삭제
    @RequestMapping(value = "/doDelete.do", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String doDelete(Board inVO) throws SQLException {
        log.debug("1. param inVO: " + inVO);

        int flag = boardService.doDelete(inVO);
        String message = "";

        if (1 == flag) {
            message = inVO.getBoardNo() + " 이(가) 삭제되었습니다.";
        } else {
            message = inVO.getBoardNo() + " 삭제 실패!";
        }

        Message messageObj = new Message(flag, message);
        String jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(messageObj);
        log.debug("2. jsonString: " + jsonString);

        return jsonString;
    }

    // 단일 게시물 조회
    @RequestMapping(value = "/doSelectOne.do", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
    public String doSelectOne(Board inVO, Model model) throws SQLException {
        String viewName = "board/board_mng";
        log.debug("1. param inVO: " + inVO);

        Board outVO = boardService.doSelectOne(inVO);

        // markdown을 HTML로 변환
        String markdownContents = markdownService.convertMarkdownToHtml(outVO.getContents());

        log.debug("2. outVO: " + outVO);

        model.addAttribute("markdownContents", markdownContents);
        model.addAttribute("board", outVO);

        return viewName;
    }

    // 게시물 등록
    @RequestMapping(value = "/doSave.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String doSave(Board inVO) throws SQLException {
        log.debug("1. param inVO: " + inVO);

        int flag = boardService.doSave(inVO);
        String message = "";

        if (1 == flag) {
            message = inVO.getTitle() + "이 등록되었습니다.";
        } else {
            message = inVO.getTitle() + " 등록 실패!";
        }

        Message messageObj = new Message(flag, message);
        String jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(messageObj);
        log.debug("2. jsonString: " + jsonString);

        return jsonString;
    }
}
