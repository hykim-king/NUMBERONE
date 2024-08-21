package com.pcwk.ehr.board.controller;

import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.pcwk.ehr.member.domain.Member;

@Controller
@RequestMapping("board")
public class BoardController implements PLog {

    @Autowired
    BoardService boardService;
    
    @Autowired
    CodeService codeService;

    public BoardController() {
        log.debug("┌──────────────────────────────────────────┐");
        log.debug("│ BoardController()                        │");
        log.debug("└──────────────────────────────────────────┘");
    }

    // 게시물 등록 화면으로 이동
    @RequestMapping(value = "/moveToReg.do", method = RequestMethod.GET)
    public String moveToReg(Board inVO, Model model, HttpSession session) throws SQLException {
        String viewName = "board/board_reg";
        log.debug("1. param inVO: " + inVO);
        
        Member member = (Member) session.getAttribute("member");
        if (member == null) {
            return "redirect:/member/signInUp.do";  // 로그인 페이지로 리다이렉트
        }
        
        model.addAttribute("board", inVO);
        return viewName;
    }
    
    //수정 페이지 이동
    @RequestMapping(value = "/moveToEdit.do", method = RequestMethod.GET)
    public String moveToEdit(@RequestParam("boardNo") int boardNo, Model model, HttpSession session) throws SQLException {
        log.debug("1. param boardNo: " + boardNo);
        
        Member member = (Member) session.getAttribute("member");
        if (member == null) {
            return "redirect:/signInUp.do";  // 로그인 페이지로 리다이렉트
        }
        
        Board board = new Board();
        board.setBoardNo(boardNo);
        
        Board outVO = boardService.doSelectOne(board);
        
        if(outVO != null) {
            if (!member.getMemberId().equals(outVO.getRegId())) {
                model.addAttribute("message", "수정 권한이 없습니다.");
                return "redirect:/board/doRetrieve.do";
            }
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
    public String doUpdate(Board inVO, HttpSession session) throws SQLException {
        log.debug("1. param inVO: " + inVO);

        Member member = (Member) session.getAttribute("member");
        if (member == null) {
            return new GsonBuilder().setPrettyPrinting().create().toJson(new Message(0, "로그인이 필요합니다."));
        }

        // 게시글 작성자 확인
        Board board = new Board();
        board.setBoardNo(inVO.getBoardNo());
        Board originalBoard = boardService.doSelectOne(board);
        
        if (!member.getMemberId().equals(originalBoard.getRegId())) {
            return new GsonBuilder().setPrettyPrinting().create().toJson(new Message(0, "수정 권한이 없습니다."));
        }

        inVO.setModDt(StringUtil.nvl(inVO.getModDt(), "2024-08-16"));
        inVO.setRegId(member.getMemberId());

        int flag = boardService.doUpdate(inVO);
        String message = "";

        if (1 == flag) {
            message = "게시글이 수정되었습니다.";
        } else {
            message = "게시글 수정에 실패했습니다.";
        }

        Message messageObj = new Message(flag, message);
        String jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(messageObj);
        log.debug("2. jsonString: " + jsonString);

        return jsonString;
    }

    // 게시물 목록 조회
    @RequestMapping(value ="/doRetrieve.do", method = RequestMethod.GET)	
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
		searchWord = searchWord.trim();
		
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
		
		DateTimeFormatter inputFormatter = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
	    DateTimeFormatter outputFormatter = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
	    LocalDateTime now = LocalDateTime.now();
	    
	    for (Board board : list) {
	        LocalDateTime dateTime = LocalDateTime.parse(board.getRegDt(), inputFormatter);
	        if (dateTime.toLocalDate().equals(now.toLocalDate())) {
	            // 오늘 날짜인 경우 시간만 표시
	            board.setRegDt(dateTime.format(DateTimeFormatter.ofPattern("HH:mm:ss")));
	        } else {
	            // 오늘이 아닌 경우 날짜만 표시
	            board.setRegDt(dateTime.format(DateTimeFormatter.ofPattern("yyyy/MM/dd")));
	        }
	    }
			
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
    public String doDelete(Board inVO, HttpSession session) throws SQLException {
        log.debug("1. param inVO: " + inVO);

        Member member = (Member) session.getAttribute("member");
        if (member == null) {
            return new GsonBuilder().setPrettyPrinting().create().toJson(new Message(0, "로그인이 필요합니다."));
        }

        // 게시글 작성자 확인
        Board originalBoard = boardService.doSelectOne(inVO);
        if (!member.getMemberId().equals(originalBoard.getRegId())) {
            return new GsonBuilder().setPrettyPrinting().create().toJson(new Message(0, "삭제 권한이 없습니다."));
        }

        int flag = boardService.doDelete(inVO);
        String message = "";

        if (1 == flag) {
            message = " 게시물이 삭제되었습니다.";
        } else {
            message = " 게시물을 삭제하는데 실패했습니다.";
        }

        Message messageObj = new Message(flag, message);
        String jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(messageObj);
        log.debug("2. jsonString: " + jsonString);

        return jsonString;
    }

    // 단일 게시물 조회
    @RequestMapping(value = "/doSelectOne.do", method = RequestMethod.GET)
    public String doSelectOne(Board inVO, Model model, HttpSession session) throws SQLException {
        log.debug("1. param inVO: " + inVO);
        
        if(null != session) {
            Member member = (Member)session.getAttribute("member");
            if(member != null) {
                inVO.setRegId(member.getMemberId());
            }
        } else {
            inVO.setRegId("1");
        }
        
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
    public String doSave(Board inVO, HttpSession session) throws SQLException {
    	String jsonString = "";
    	log.debug("1. param inVO: " + inVO);
    	
        Member member = (Member) session.getAttribute("member");
        if (member == null) {
            return new GsonBuilder().setPrettyPrinting().create().toJson(new Message(0, "로그인이 필요합니다."));
        }

    	inVO.setRegId(member.getMemberId());
        inVO.setNickname(member.getNickname());
        int flag = boardService.doSave(inVO);
        
        log.debug("2.flag:" + flag);
        String message = "";

        if (1 == flag) {
            message =  "게시글이 등록되었습니다.";
        } else {
            message = "게시글 등록에 실패했습니다.";
        }

        Message messageObj = new Message(flag, message);
        jsonString = new GsonBuilder().setPrettyPrinting().create().toJson(messageObj);
        log.debug("2. jsonString: " + jsonString);

        return jsonString;
    }
    
}