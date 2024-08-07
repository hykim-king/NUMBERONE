package com.pcwk.ehr.reply.domain;

import com.pcwk.ehr.cmn.DTO;

public class Reply extends DTO{
	private int    replyNo  ; //댓글 순번
	private int    BoardNo  ; //게시판 순번
	private String regId   ; //등록자
	private String replyContents ; //댓글 내용
	private int    parentReply ; //대댓글 번호
	private String regDt    ; //등록일
	private String modDt    ; //수정일
	
	public Reply() {}

	public Reply(int replyNo, int boardNo, String regId, String replyContents, int parentReply, String regDt,
			String modDt) {
		super();
		this.replyNo = replyNo;
		BoardNo = boardNo;
		this.regId = regId;
		this.replyContents = replyContents;
		this.parentReply = parentReply;
		this.regDt = regDt;
		this.modDt = modDt;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public int getBoardNo() {
		return BoardNo;
	}

	public void setBoardNo(int boardNo) {
		BoardNo = boardNo;
	}

	public String getRegId() {
		return regId;
	}

	public void setRegId(String regId) {
		this.regId = regId;
	}

	public String getReplyContents() {
		return replyContents;
	}

	public void setReplyContents(String replyContents) {
		this.replyContents = replyContents;
	}

	public int getParentReply() {
		return parentReply;
	}

	public void setParentReply(int parentReply) {
		this.parentReply = parentReply;
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
		return "Reply [replyNo=" + replyNo + ", BoardNo=" + BoardNo + ", regId=" + regId + ", replyContents="
				+ replyContents + ", parentReply=" + parentReply + ", regDt=" + regDt + ", modDt=" + modDt + "]";
	}

}
