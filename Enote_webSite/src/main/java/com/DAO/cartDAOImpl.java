package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.BookDtls;
import com.entity.Cart;

public class cartDAOImpl implements cartDAO{
	private Connection conn;
	public cartDAOImpl(Connection conn) {
		this.conn=conn;
	}
	
	public boolean addCart(Cart c) {
		boolean f=false;
		try {
			String sql="insert into cart(bookId,uId,bookname,authorname,bookprice,totalprice) values(?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, c.getBookId());
			ps.setInt(2, c.getuId());
			ps.setString(3, c.getBookname());
			ps.setString(4, c.getAuthorname());
			ps.setDouble(5, c.getBookprice());
			ps.setDouble(6, c.getTotalprice());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return f;
	}

	public List<Cart> getBookByUser(int uId) {
		
		List<Cart> list=new ArrayList<Cart>();
		Cart c=null;
		double Totalprice=0;
		try {
			String sql="select * from cart where uID=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, uId);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				c=new Cart();
				c.setcId(rs.getInt(1));
				c.setBookId(rs.getInt(2));
				c.setuId(rs.getInt(3));
				c.setBookname(rs.getString(4));
				c.setAuthorname(rs.getString(5));
				c.setBookprice(rs.getDouble(6));
				
				Totalprice=Totalprice+rs.getDouble(7);
				c.setTotalprice(Totalprice);				
				list.add(c);
			}
		}catch(Exception e) {}
		return list;
	}

	public boolean deleteCartItem(int bookId,int uId) {
		boolean f=false;
		try {
			String sql="delete from cart where bookId=? and uId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, bookId);
			ps.setInt(2, uId);
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}else {
				f=false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}

}
