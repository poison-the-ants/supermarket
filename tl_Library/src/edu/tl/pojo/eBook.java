package edu.tl.pojo;

import java.util.Date;

public class eBook {
	private int bid;
	private int pagenum;
	private int wordnum;
	private String paper;
	private Date printtime;
	private String press;
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public int getPagenum() {
		return pagenum;
	}
	public void setPagenum(int pagenum) {
		this.pagenum = pagenum;
	}
	public int getWordnum() {
		return wordnum;
	}
	public void setWordnum(int wordnum) {
		this.wordnum = wordnum;
	}
	public String getPaper() {
		return paper;
	}
	public void setPaper(String paper) {
		this.paper = paper;
	}
	public Date getPrinttime() {
		return printtime;
	}
	public void setPrinttime(Date printtime) {
		this.printtime = printtime;
	}
	public String getPress() {
		return press;
	}
	public void setPress(String press) {
		this.press = press;
	}
	
}
