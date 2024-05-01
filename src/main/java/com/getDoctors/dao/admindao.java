package com.getDoctors.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.getDoctors.model.*;
import com.getDoctors.dao.*;

public class admindao {
	dbconnection conObj = new dbconnection();
	
	public boolean loginAuth(String uname, String pass) {
		boolean isAuth = false;
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `main_admin` WHERE username = ? and password = ?;");

			ps.setString(1, uname);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();

			if(rs.next()) {
				isAuth = true;
			}else {
				isAuth = false;
			}
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		return isAuth;
	}



}
