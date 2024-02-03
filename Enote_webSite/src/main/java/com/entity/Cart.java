package com.entity;

public class Cart {
	private int cId;
	private int bookId;
	private int uId;
	private String bookname;
	private String authorname;
	private double bookprice;
	private double totalprice;
	public Cart() {
		super();
	}
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public int getuId() {
		return uId;
	}
	public void setuId(int uId) {
		this.uId = uId;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthorname() {
		return authorname;
	}
	public void setAuthorname(String authorname) {
		this.authorname = authorname;
	}
	public double getBookprice() {
		return bookprice;
	}
	public void setBookprice(double bookprice) {
		this.bookprice = bookprice;
	}
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	@Override
	public String toString() {
		return "Cart [cId=" + cId + ", bookId=" + bookId + ", uId=" + uId + ", bookname=" + bookname + ", authorname="
				+ authorname + ", bookprice=" + bookprice + ", totalprice=" + totalprice + "]";
	}

}
