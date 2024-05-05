package com.getDoctors.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.getDoctors.model.doctor;

public class doctordao {
	dbconnection conObj = new dbconnection();

	public boolean registerDoctor(String name, String email, String number, String address, String specialization,
			String experience, String qualification, String gender, String password) {
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
			PreparedStatement ps = conn
					.prepareStatement("SELECT * FROM `doctor` WHERE email = ? and password = ? and status = 1;");

			ps.setString(1, email);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				patid = rs.getInt("doctor_id");
			}
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		System.out.println(patid);
		return patid;
	}

	public List<doctor> AllDoctors() {
		List<doctor> data = new ArrayList<>();
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `doctor`;");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int doctor_id = rs.getInt("doctor_id");
				String fname = rs.getString("name");
				String lname = rs.getString("name");
				String email = rs.getString("email");
				String number = rs.getString("number");
				String address = rs.getString("address");
				String specilization = rs.getString("specialization");
				int exp = rs.getInt("experience");
				String qualification = rs.getString("qualification");
				String gender = rs.getString("gender");
				String pass = rs.getString("password");
				String profile = rs.getString("profile_picture");
				String status = rs.getString("status");

				data.add(new doctor(doctor_id, fname, lname, email, number, address, specilization, exp,
						qualification, gender, pass, profile, status));
			}

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		return data;
	}

	public doctor GetDoctorByID(int id) {
		doctor data = null;
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `doctor` where doctor_id=?;");
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int doctor_id = rs.getInt("doctor_id");
				String fname = rs.getString("name");
				String lname = rs.getString("name");
				String email = rs.getString("email");
				String number = rs.getString("number");
				String address = rs.getString("address");
				String specilization = rs.getString("specialization");
				int exp = rs.getInt("experience");
				String qualification = rs.getString("qualification");
				String gender = rs.getString("gender");
				String pass = rs.getString("password");
				String profile = rs.getString("profile_picture");
				String status = rs.getString("status");

				data = new doctor(doctor_id, fname, lname, email, number, address, specilization, exp,
						qualification, gender, pass, profile, status);
			}

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		return data;
	}
	
	
	public List<doctor> ApproveDoctors() {
		List<doctor> data = new ArrayList<>();
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `doctor` where status=1;");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int doctor_id = rs.getInt("doctor_id");
				String fname = rs.getString("name");
				String lname = rs.getString("name");
				String email = rs.getString("email");
				String number = rs.getString("number");
				String address = rs.getString("address");
				String specilization = rs.getString("specialization");
				int exp = rs.getInt("experience");
				String qualification = rs.getString("qualification");
				String gender = rs.getString("gender");
				String pass = rs.getString("password");
				String profile = rs.getString("profile_picture");
				String status = rs.getString("status");

				data.add(new doctor(doctor_id, fname, lname, email, number, address, specilization, exp,
						qualification, gender, pass, profile, status));
			}

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		return data;
	}

	public List<doctor> RequestedDoctors() {
		List<doctor> data = new ArrayList<>();
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `doctor` where status=0;");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int doctor_id = rs.getInt("doctor_id");
				String fname = rs.getString("name");
				String lname = rs.getString("name");
				String email = rs.getString("email");
				String number = rs.getString("number");
				String address = rs.getString("address");
				String specilization = rs.getString("specialization");
				int exp = rs.getInt("experience");
				String qualification = rs.getString("qualification");
				String gender = rs.getString("gender");
				String pass = rs.getString("password");
				String profile = rs.getString("profile_picture");
				String status = rs.getString("status");

				data.add(new doctor(doctor_id, fname, lname, email, number, address, specilization, exp,
						qualification, gender, pass, profile, status));
			}

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		return data;
	}

	public List<doctor> RejectedDoctors() {
		List<doctor> data = new ArrayList<>();
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `doctor` where status=2;");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int doctor_id = rs.getInt("doctor_id");
				String fname = rs.getString("name");
				String lname = rs.getString("name");
				String email = rs.getString("email");
				String number = rs.getString("number");
				String address = rs.getString("address");
				String specilization = rs.getString("specialization");
				int exp = rs.getInt("experience");
				String qualification = rs.getString("qualification");
				String gender = rs.getString("gender");
				String pass = rs.getString("password");
				String profile = rs.getString("profile_picture");
				String status = rs.getString("status");

				data.add(new doctor(doctor_id, fname, lname, email, number, address, specilization, exp,
						qualification, gender, pass, profile, status));
			}

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		return data;
	}
	
	public boolean approveDoctor(int id) {
		System.out.println(" nn   REAched");
		try {
				Connection conn = conObj.dbconnect();
				PreparedStatement ps = conn.prepareStatement("UPDATE `doctor` SET status = 1 where doctor_id = ?");
				ps.setInt(1, id);

				int rowsInserted = ps.executeUpdate();
				return rowsInserted > 0;
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			return false;
		}
	}
	
	
	public boolean rejectDoctor(int id) {
		System.out.println(" nn   REAched");
		try {
				Connection conn = conObj.dbconnect();
				PreparedStatement ps = conn.prepareStatement("UPDATE `doctor` SET status = 2 where doctor_id = ?");
				ps.setInt(1, id);

				int rowsInserted = ps.executeUpdate();
				return rowsInserted > 0;
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			return false;
		}
	}

	
	

}
