package com.Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
	private static Connection conn;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:8090/ebook_app","root","root");
		}catch(SQLException sql) {
			sql.printStackTrace();
		}catch(Exception ex) {
			System.out.println("Error");
			//ex.printStackTrace();
		}
		return conn;
	}
}
//DBconnection.getConnection();