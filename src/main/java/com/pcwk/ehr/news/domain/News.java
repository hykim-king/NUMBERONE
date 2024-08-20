package com.pcwk.ehr.news.domain;

import com.pcwk.ehr.cmn.DTO;

public class News extends DTO {
	int newsSeq;
	String newsTitle;
	String newsWriter;
	String newsRegDt;
	String newsContext;
	public int getNewsSeq() {
		return newsSeq;
	}
	public void setNewsSeq(int newsSeq) {
		this.newsSeq = newsSeq;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsWriter() {
		return newsWriter;
	}
	public void setNewsWriter(String newsWriter) {
		this.newsWriter = newsWriter;
	}
	public String getNewsRegDt() {
		return newsRegDt;
	}
	public void setNewsRegDt(String newsRegDt) {
		this.newsRegDt = newsRegDt;
	}
	public String getNewsContext() {
		return newsContext;
	}
	public void setNewsContext(String newsContext) {
		this.newsContext = newsContext;
	}
	@Override
	public String toString() {
		return "News [newsSeq=" + newsSeq + ", newsTitle=" + newsTitle + ", newsWriter=" + newsWriter + ", newsRegDt="
				+ newsRegDt + ", newsContext=" + newsContext + ", toString()=" + super.toString() + "]";
	}
	

}
