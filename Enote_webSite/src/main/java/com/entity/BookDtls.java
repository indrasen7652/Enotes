package com.entity;

public class BookDtls {
	private int bookId;
	private String bookname;
	private String authorname;
	private String bookprice;
	private String booktype;
	private String bookstatus;
	private String bookimg;
	private String email;
	
	
	public BookDtls() {
		super();
	}
	
	
	
	public BookDtls(String bookname, String authorname, String bookprice, String booktype, String bookstatus,
			String bookimg, String email) {
		super();
		this.bookname = bookname;
		this.authorname = authorname;
		this.bookprice = bookprice;
		this.booktype = booktype;
		this.bookstatus = bookstatus;
		this.bookimg = bookimg;
		this.email = email;
	}



	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
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
	public String getBookprice() {
		return bookprice;
	}
	public void setBookprice(String bookprice) {
		this.bookprice = bookprice;
	}
	public String getBooktype() {
		return booktype;
	}
	public void setBooktype(String booktype) {
		this.booktype = booktype;
	}
	public String getBookstatus() {
		return bookstatus;
	}
	public void setBookstatus(String bookstatus) {
		this.bookstatus = bookstatus;
	}
	public String getBookimg() {
		return bookimg;
	}
	public void setBookimg(String bookimg) {
		this.bookimg = bookimg;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "BookDtls [bookId=" + bookId + ", bookname=" + bookname + ", authorname=" + authorname + ", bookprice="
				+ bookprice + ", booktype=" + booktype + ", bookstatus=" + bookstatus + ", bookimg=" + bookimg
				+ ", email=" + email + "]";
	}
	
	
	
	
}
