package com.pcwk.ehr.board.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.GsonBuilder;
import com.pcwk.ehr.board.domain.Board;
import com.pcwk.ehr.board.service.BoardService;
import com.pcwk.ehr.cmn.Message;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.cmn.Search;
import com.pcwk.ehr.cmn.StringUtil;
import com.pcwk.ehr.code.domain.Code;
import com.pcwk.ehr.code.service.CodeService;
import com.pcwk.ehr.markdown.service.MarkdownService;

@Controller
@RequestMapping("board")
public class BoardController implements PLog {

    @Autowired
    BoardService boardService;
    
    @Autowired
    CodeService codeService;

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
    
    //수정 페이지 이동
    @RequestMapping(value = "/moveToEdit.do", method = RequestMethod.GET)
    public String moveToEdit(@RequestParam("boardNo") int boardNo, Model model) throws SQLException {
        log.debug("1. param boardNo: " + boardNo);
        
        Board board = new Board();
        board.setBoardNo(boardNo);
        
        Board outVO = boardService.doSelectOne(board);
        
        if(outVO != null) {
            model.addAttribute("board", outVO);
            return "board/board_edit";
        } else {
            model.addAttribute("message", "게시글을 찾을 수 없습니다.");
            return "redirect:/board/doRetrieve.do";
        }
    }

    // 게시물 수정
    @RequestMapping(value = "/doUpdate.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String doUpdate(Board inVO) throws SQLException {
        log.debug("1. param inVO: " + inVO);

        // 실제 수정자 ID 및 수정일 설정 (수정일은 현재 날짜로 설정)
        inVO.setModDt(StringUtil.nvl(inVO.getModDt(), "2024-08-16"));

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
    @RequestMapping( value ="/doRetrieve.do"
			, method = RequestMethod.GET)	
	public String doRetrieve(Model model, HttpServletRequest req) throws SQLException{
		String viewName = "board/board_list";
		log.debug("┌──────────────────────────────────────────┐");
		log.debug("│ doRetrieve()                             │");
		log.debug("└──────────────────────────────────────────┘");		
		
		Search search =new Search();
		
		//div값이 없으면 전체
		String  div  = StringUtil.nvl(req.getParameter("div"),"");
		search.setDiv(div);
		
		//검색구분
		String  searchDiv  = StringUtil.nvl(req.getParameter("searchDiv"),"");
		String  searchWord = StringUtil.nvl(req.getParameter("searchWord"),"");
		
		search.setSearchDiv(searchDiv);
		search.setSearchWord(searchWord);
		
		//브라우저에서 숫자 : 문자로 들어 온다.	
		String pageSize = StringUtil.nvl(req.getParameter("pageSize"),"10");
		String pageNo = StringUtil.nvl(req.getParameter("pageNo"),"1");
		
		search.setPageSize(Integer.parseInt(pageSize));
		search.setPageNo(Integer.parseInt(pageNo));
		
		// 1.
		log.debug("1.param search:" + search);		
		List<Board> list = this.boardService.doRetrieve(search);
		
		//2. 화면 전송 데이터
		model.addAttribute("list", list);//조회 데이터
		model.addAttribute("search", search); //검색조건
		
		int totalCnt = 0;
		//페이징:totalcnt
		if(null != list && list.size() > 0) {
			Board firstVO = list.get(0);
			totalCnt = firstVO.getTotalCnt();
		}
		model.addAttribute("totalCnt", totalCnt); //검색조건
		
		//----------------------------------------------------------------------
		Code code =new Code();
		code.setMstCode("BOARD_SEARCH");//회원검색 조건
		List<Code> memberSearch = this.codeService.doRetrieve(code);
		model.addAttribute("BOARD_SEARCH", memberSearch); //검색조건
		
        code.setMstCode("COM_PAGE_SIZE");//회원검색 조건
		List<Code> pageSizeSearch = this.codeService.doRetrieve(code);
		model.addAttribute("COM_PAGE_SIZE", pageSizeSearch); //페이지 사이즈

		//----------------------------------------------------------------------
		
		//model
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
    @RequestMapping(value = "/doSelectOne.do", method = RequestMethod.GET)
    public String doSelectOne(Board inVO, Model model) throws SQLException {
        log.debug("1. param inVO: " + inVO);
        
        Board outVO = boardService.doSelectOne(inVO);
        
        log.debug("2. outVO: " + outVO);
        
        String message = "";
        int flag = 0;
        if(null != outVO) {
            message = outVO.getTitle() + " 이 조회 되었습니다.";
            flag = 1;
        } else {
            message = inVO.getTitle() + " 조회 실패!";
        }
        
        Message messageObj = new Message(flag, message);
        
        model.addAttribute("board", outVO);
        model.addAttribute("message", messageObj);
        
        return "board/board_mng";  // JSP 페이지 이름
    }


    // 게시물 등록
    @RequestMapping(value = "/doSave.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String doSave(Board inVO) throws SQLException {
    	String jsonString = "";
    	log.debug("1. param inVO: " + inVO);
        int flag = boardService.doSave(inVO);
        
        log.debug("2.flag:" + flag);
        String message = "";

        if (1 == flag) {
            message = inVO.getTitle() + "이 등록되었습니다.";
        } else {
            message = inVO.getTitle() + " 등록 실패!";
        }

        Message messageObj = new Message(flag, message);
        jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(messageObj);
        log.debug("2. jsonString: " + jsonString);

        return jsonString;
    }
}
