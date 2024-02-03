package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.BookDtls;

public class serachDAOImpl implements serachDAO{
	private Connection conn;
	public serachDAOImpl(Connection conn) {
		this.conn=conn;
	}
	public List<BookDtls> serachBooks(String ch) {
		List<BookDtls> list=new ArrayList<BookDtls>();
		BookDtls b=null;
		try {
			String sql="select * from book_dtls where bookname like ? or authorname like ? or booktype like ? and bookstatus=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "%"+ch+"%");
			ps.setString(2, "%"+ch+"%");
			ps.setString(3, "%"+ch+"%");
			ps.setString(4, "Action");
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

}
