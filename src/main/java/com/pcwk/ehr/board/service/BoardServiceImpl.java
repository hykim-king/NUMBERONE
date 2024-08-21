package com.pcwk.ehr.board.service;

import java.sql.SQLException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.pcwk.ehr.board.domain.Board;
import com.pcwk.ehr.cmn.DTO;
import com.pcwk.ehr.cmn.PLog;
import com.pcwk.ehr.mapper.BoardMapper;

@Service("boardServiceImpl")
public class BoardServiceImpl implements BoardService, PLog {

	
	@Autowired
	BoardMapper boardMapper;
	
	public BoardServiceImpl() {}
	
	@Override
	public int doDelete(Board inVO) throws SQLException {
		log.debug("1. param :"+inVO);
		return this.boardMapper.doDelete(inVO);
	}

	@Override
	public List<Board> doRetrieve(DTO search) throws SQLException {
		log.debug("1. param :"+search);
		return this.boardMapper.doRetrieve(search);
	}

	@Override
	public int doUpdate(Board inVO) throws SQLException {
		log.debug("1. param :"+inVO);
		return boardMapper.doUpdate(inVO);
	}

	@Override
	public int doSave(Board inVO) throws SQLException {
		log.debug("1. param :"+inVO);
		return boardMapper.doSave(inVO);
	}
    
	@Override
	public int askCntUpdate(Board inVO) throws SQLException {
	    log.debug("1. param :" + inVO);
	    return boardMapper.askCntUpdate(inVO);
	}
	
	
	 
	//조회 count증가
	@Override
    public Board doSelectOne(Board inVO) throws SQLException {
        //단건 조회
        log.debug("1. param :"+inVO);
        Board outVO = boardMapper.doSelectOne(inVO);
        log.debug("2. outVO :"+outVO);
        
        int flag = 0;
        //조회 count증가
        if(null != outVO && inVO.getRegId() != null) {
            // 세션에서 조회한 게시글 목록을 가져옴
            HttpSession session = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession();
            Set<Integer> viewedPosts = (Set<Integer>) session.getAttribute("viewedPosts");
            if (viewedPosts == null) {
                viewedPosts = new HashSet<>();
                session.setAttribute("viewedPosts", viewedPosts);
            }
            
            // 이미 조회한 게시글이 아닌 경우에만 조회수 증가
            if (!viewedPosts.contains(inVO.getBoardNo())) {
                flag = boardMapper.readCntUpdate(inVO);
                log.debug("3. 조회 count증가 :" + flag);
                
                if(1 == flag) {
                    outVO.setReadCnt(outVO.getReadCnt() + 1);
                    viewedPosts.add(inVO.getBoardNo());
                }
            }
        } 
        return outVO;
    }
	

}
