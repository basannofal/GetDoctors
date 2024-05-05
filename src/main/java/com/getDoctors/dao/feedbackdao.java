package com.getDoctors.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.getDoctors.model.feedback;


public class feedbackdao {

	dbconnection conObj = new dbconnection();

	public boolean AddFeedback(String date, String time, String note, int drid, int ptid,
			int rating) {

		try {
			
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement(
					"INSERT INTO `feedback`(`rating`, `review_text`, `review_date_time`, `doctor_id`, `patient_id`) VALUES (?,?,?,?,?)");
			ps.setInt(1, rating);
			ps.setString(2, note);
	        ps.setString(3, time);
			ps.setInt(4, drid);
			ps.setInt(5, ptid);

			int rowsInserted = ps.executeUpdate();
			return rowsInserted > 0;

		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			return false;
		}
	}
	
	
	public List<feedback> AllFeedback() {
		List<feedback> data = new ArrayList<>();
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `feedback`;");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int review_id = rs.getInt("review_id");
				int rating = rs.getInt("rating");
				String review_text = rs.getString("review_text");
				String review_date_time = rs.getString("review_date_time");
				int doctor_id = rs.getInt("doctor_id");
				int patient_id = rs.getInt("patient_id");
				

				data.add(new feedback(review_id, rating, review_text, review_date_time, doctor_id, patient_id));
			}

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		return data;
	}
	
	

	
	
	public List<feedback> DoctorFeedback(int id) {
		List<feedback> data = new ArrayList<>();
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `feedback` where doctor_id = ?;");
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int review_id = rs.getInt("review_id");
				int rating = rs.getInt("rating");
				String review_text = rs.getString("review_text");
				String review_date_time = rs.getString("review_date_time");
				int doctor_id = rs.getInt("doctor_id");
				int patient_id = rs.getInt("patient_id");
				

				data.add(new feedback(review_id, rating, review_text, review_date_time, doctor_id, patient_id));
			}

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		return data;
	}
	
	
	

	
	
	public List<feedback> patientFeedback(int id) {
		List<feedback> data = new ArrayList<>();
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `feedback` where patient_id = ?;");
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int review_id = rs.getInt("review_id");
				int rating = rs.getInt("rating");
				String review_text = rs.getString("review_text");
				String review_date_time = rs.getString("review_date_time");
				int doctor_id = rs.getInt("doctor_id");
				int patient_id = rs.getInt("patient_id");
				

				data.add(new feedback(review_id, rating, review_text, review_date_time, doctor_id, patient_id));
			}

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		return data;
	}

}
