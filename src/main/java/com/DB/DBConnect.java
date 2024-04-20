package com.DB;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

public class DBConnect{

	private static Connection conn = null;
	public static Connection getconn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flower-app", "root", "270803");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
}
