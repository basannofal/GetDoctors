package com.getDoctors.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class patientdao {

	private dbconnection conObj = new dbconnection();

	public boolean registerPatient(String name, String email, String address, int age, String number, String gender,
			String password) {
		try {
			if (isPatientEmailAvailable(email)) {
				Connection conn = conObj.dbconnect();
				PreparedStatement ps = conn.prepareStatement("INSERT INTO `patient`"
						+ "(`name`, `email`, `address`, `age`, `number`, `gender`, `password`) VALUES (?,?,?,?,?,?,?)");
				ps.setString(1, name);
				ps.setString(2, email);
				ps.setString(3, address);
				ps.setInt(4, age);
				ps.setString(5, number);
				ps.setString(6, gender);
				ps.setString(7, password);

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

	private boolean isPatientEmailAvailable(String email) {
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `patient` WHERE email = ?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			return !rs.next(); // If result set has no rows, email is available
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			return false;
		}
	}

	
	
	public int patientlogin(String email, String pass) {
		int patid = 0;
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `patient` WHERE email = ? and password = ?;");

			ps.setString(1, email);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();

			if(rs.next()) {
	            patid = rs.getInt("patient_id");
	        }
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		System.out.println(patid);
		return patid;
	}
	
}
