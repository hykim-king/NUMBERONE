package com.pcwk.ehr.board.domain;

import com.pcwk.ehr.cmn.DTO;

public class Board extends DTO {
	private int    boardNo  ; //순번
	private String regId    ; //등록자
	private String title    ; //제목
	private String contents ; //내용
	private int    askCnt   ; //댓글수
	private int    readCnt  ; //조회수
	private String regDt    ; //등록일
	private String modDt    ; //수정일
	private String div      ; 
	
	public Board() {}

	public Board(int boardNo, String div, String regId, String title, String contents, int askCnt, int readCnt,
			String regDt, String modDt) {
		super();
		this.boardNo = boardNo;
		this.div = div;
		this.regId = regId;
		this.title = title;
		this.contents = contents;
		this.askCnt = askCnt;
		this.readCnt = readCnt;
		this.regDt = regDt;
		this.modDt = modDt;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getDiv() {
		return div;
	}

	public void setDiv(String div) {
		this.div = div;
	}

	public String getRegId() {
		return regId;
	}

	public void setRegId(String regId) {
		this.regId = regId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getAskCnt() {
		return askCnt;
	}

	public void setAskCnt(int askCnt) {
		this.askCnt = askCnt;
	}

	public int getReadCnt() {
		return readCnt;
	}

	public void setReadCnt(int readCnt) {
		this.readCnt = readCnt;
	}

	public String getRegDt() {
		return regDt;
	}

	public void setRegDt(String regDt) {
		this.regDt = regDt;
	}

	public String getModDt() {
		return modDt;
	}

	public void setModDt(String modDt) {
		this.modDt = modDt;
	}

	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", div=" + div + ", regId=" + regId + ", title=" + title + ", contents="
				+ contents + ", askCnt=" + askCnt + ", readCnt=" + readCnt + ", regDt=" + regDt + ", modDt=" + modDt
				+ "]";
	}



}