package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDAOImpl implements userDao {
	private Connection conn;
	public UserDAOImpl(Connection conn) {
		super();
		this.conn=conn;
	}
	public boolean userRagistraction(User us) {
		boolean f=false;
		try {
			String str="insert into user(name,email,phone,password) values(?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(str);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmailid());
			ps.setString(3,us.getPhoneno());
			ps.setString(4, us.getPassword());
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}catch(Exception e){
		e.printStackTrace();	
		}
		return f;
	}
	public User userLogin(String email, String password) {
		User us=null;
		try {
			String str="select * from user where email=? and password=?";
			PreparedStatement ps=conn.prepareStatement(str);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				us=new User();
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setEmailid(rs.getString(3));
				us.setPhoneno(rs.getString(4));
				us.setPassword(rs.getString(5));
				us.setAddress(rs.getString(6));
				us.setLandmarks(rs.getString(7));
				us.setCity(rs.getString(8));
				us.setState(rs.getString(9));
				us.setPincode(rs.getString(10));
				
			}
			
		}catch(Exception e){
		e.printStackTrace();	
		}
		return us;
	}

}
