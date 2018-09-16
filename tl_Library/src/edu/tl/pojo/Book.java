package edu.tl.pojo;

import java.util.Date;

public class Book {
	private int bid;
	private String bname;
	private String author;
	private float price;
	private Date publictime;
	private String introduce;
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public Date getPublictime() {
		return publictime;
	}
	public void setPublictime(Date publictime) {
		this.publictime = publictime;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	
	
}
