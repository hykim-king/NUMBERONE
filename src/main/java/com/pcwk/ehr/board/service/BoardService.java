package com.pcwk.ehr.board.service;

import java.sql.SQLException;

import com.pcwk.ehr.board.domain.Board;
import com.pcwk.ehr.cmn.WorkDiv;

public interface BoardService extends WorkDiv<Board> {
	
	int askCntUpdate(Board inVO) throws SQLException;
	
	
}
