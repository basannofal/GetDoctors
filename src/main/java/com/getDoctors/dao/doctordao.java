package com.getDoctors.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class doctordao {
	dbconnection conObj = new dbconnection();

	public boolean registerDoctor(String name, String email, String number, String address, String specialization,
			String experience, String qualification,  String gender,
			String password) {
		System.out.println(" nn   REAched");
		try {
			if (isDoctorEmailAvailable(email)) {
				Connection conn = conObj.dbconnect();
				PreparedStatement ps = conn.prepareStatement("INSERT INTO `doctor`"
						+ "(`name`, `email`, `number`, `address`, `specialization`, `experience`, `qualification`,"
						+ "  `gender`, `password`) VALUES (?,?,?,?,?,?,?,?,?)");
				ps.setString(1, name);
				ps.setString(2, email);
				ps.setString(3, number);
				ps.setString(4, address);
				ps.setString(5, specialization);
				ps.setString(6, experience);
				ps.setString(7, qualification);
				ps.setString(8, gender);
				ps.setString(9, password);

				int rowsInserted = ps.executeUpdate();
				return rowsInserted > 0;
			} else {
				System.out.println("Email already exists.");
				return false;
			}
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			return false;
		}
	}

	// Method to check if an email is available in the doctor table
	private boolean isDoctorEmailAvailable(String email) {
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `doctor` WHERE email = ?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			return !rs.next(); // If result set has no rows, email is available
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			return false;
		}
	}
	
	public int doctorlogin(String email, String pass) {
		int patid = 0;
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `doctor` WHERE email = ? and password = ? and status = 1;");

			ps.setString(1, email);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();

			if(rs.next()) {
	            patid = rs.getInt("doctor_id");
	        }
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		System.out.println(patid);
		return patid;
	}

}
