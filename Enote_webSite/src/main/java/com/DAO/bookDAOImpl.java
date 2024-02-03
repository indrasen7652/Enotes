package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.BookDtls;

public class bookDAOImpl implements bookDAO{

	Connection conn;
	public bookDAOImpl(Connection conn) {
		this.conn=conn;
	}
	public boolean addBook(BookDtls books) {
		boolean f=false;
		
		try {
			String sql="insert into book_dtls(bookname,authorname,bookprice,booktype,bookstatus,bookimg,email) values(?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, books.getBookname());
			ps.setString(2,books.getAuthorname());
			ps.setString(3,books.getBookprice());
			ps.setString(4,books.getBooktype());
			ps.setString(5,books.getBookstatus());
			ps.setString(6,books.getBookimg());
			ps.setString(7,books.getEmail());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public List<BookDtls> getAllBooks() {
		List<BookDtls> list=new ArrayList<BookDtls>();
		BookDtls b=null;
		try {
			String sql="select * from book_dtls";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				b=new BookDtls(); 
				b.setBookId(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setAuthorname(rs.getString(3));
				b.setBookprice(rs.getString(4));
				b.setBooktype(rs.getString(5));
				b.setBookstatus(rs.getString(6));
				b.setBookimg(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
			}
		}catch(Exception e) {}
		return list;
	}
	public BookDtls getBookById(int bookId) {
		BookDtls b=null;
		try {
			String sql="select * from book_dtls where bookId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, bookId);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				b=new BookDtls(); 
				b.setBookId(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setAuthorname(rs.getString(3));
				b.setBookprice(rs.getString(4));
				b.setBooktype(rs.getString(5));
				b.setBookstatus(rs.getString(6));
				b.setBookimg(rs.getString(7));
				b.setEmail(rs.getString(8));
			}
		}catch(Exception e) {
			
		}
		return b;
	}
	
	public boolean updateBook(BookDtls books) {
		boolean f=false;
		try {
			String sql="update book_dtls set bookname=?,authorname=?,bookprice=?,bookstatus=? where bookId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, books.getBookname());
			ps.setString(2,books.getAuthorname());
			ps.setString(3,books.getBookprice());
			ps.setString(4,books.getBookstatus());
			ps.setInt(5, books.getBookId());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public boolean deleteBook(int bookId) {
		boolean f=false;
		try {
			String sql="delete from book_dtls where bookId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, bookId);
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
		e.printStackTrace();	
		}
		return f;
	}
	public List<BookDtls> getNewBook() {
		List<BookDtls> list=new ArrayList<BookDtls>();
		BookDtls b=null;
		try {
			String sql="select * from book_dtls where booktype=? and bookstatus=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "new");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			int i=1;
			while(rs.next()&& i<=4) {
				b=new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setAuthorname(rs.getString(3));
				b.setBookprice(rs.getString(4));
				b.setBooktype(rs.getString(5));
				b.setBookstatus(rs.getString(6));
				b.setBookimg(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public List<BookDtls> getRecentBook() {
		List<BookDtls> list=new ArrayList<BookDtls>();
		BookDtls b=null;
		try {
			String sql="select * from book_dtls where booktype=? and bookstatus=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "recent");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			int i=1;
			while(rs.next()&& i<=4) {
				b=new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setAuthorname(rs.getString(3));
				b.setBookprice(rs.getString(4));
				b.setBooktype(rs.getString(5));
				b.setBookstatus(rs.getString(6));
				b.setBookimg(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<BookDtls> getOldBook() {
		List<BookDtls> list=new ArrayList<BookDtls>();
		BookDtls b=null;
		try {
			String sql="select * from book_dtls where booktype=? and bookstatus=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "old");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			int i=1;
			while(rs.next()&& i<=4) {
				b=new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setAuthorname(rs.getString(3));
				b.setBookprice(rs.getString(4));
				b.setBooktype(rs.getString(5));
				b.setBookstatus(rs.getString(6));
				b.setBookimg(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public List<BookDtls> getAllNewBook() {
		List<BookDtls> list=new ArrayList<BookDtls>();
		BookDtls b=null;
		try {
			String sql="select * from book_dtls where booktype=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "new");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				b=new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setAuthorname(rs.getString(3));
				b.setBookprice(rs.getString(4));
				b.setBooktype(rs.getString(5));
				b.setBookstatus(rs.getString(6));
				b.setBookimg(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public List<BookDtls> getAllOldBook() {
		List<BookDtls> list=new ArrayList<BookDtls>();
		BookDtls b=null;
		try {
			String sql="select * from book_dtls where booktype=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "old");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				b=new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setAuthorname(rs.getString(3));
				b.setBookprice(rs.getString(4));
				b.setBooktype(rs.getString(5));
				b.setBookstatus(rs.getString(6));
				b.setBookimg(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public List<BookDtls> getALLRecentBook() {
		List<BookDtls> list=new ArrayList<BookDtls>();
		BookDtls b=null;
		try {
			String sql="select * from book_dtls where booktype=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "recent");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				b=new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setAuthorname(rs.getString(3));
				b.setBookprice(rs.getString(4));
				b.setBooktype(rs.getString(5));
				b.setBookstatus(rs.getString(6));
				b.setBookimg(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public BookDtls getBooksDetials(int bookId) {
		
		BookDtls b=null;
		try {
			String sql="select * from book_dtls where bookId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, bookId);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				b=new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookname(rs.getString(2));
				b.setAuthorname(rs.getString(3));
				b.setBookprice(rs.getString(4));
				b.setBooktype(rs.getString(5));
				b.setBookstatus(rs.getString(6));
				b.setBookimg(rs.getString(7));
				b.setEmail(rs.getString(8));			
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return b;
	}
	
}
