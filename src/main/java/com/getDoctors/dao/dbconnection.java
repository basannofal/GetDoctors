package com.getDoctors.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnection {
	private String URL = "jdbc:mysql://localhost:3306/get_doctors";
	private String Username = "root";
	private String Password = "";

	public Connection dbconnect() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(URL, Username, Password);
			System.out.print("Connected");
		} catch (Exception e) {
			System.out.print("" + e);
			e.printStackTrace();
		}
		return con;
	}

}
