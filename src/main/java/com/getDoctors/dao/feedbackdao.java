package com.getDoctors.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.getDoctors.model.feedback;


public class feedbackdao {

	dbconnection conObj = new dbconnection();

	public boolean AddDisease(String disease) {

		try {
				Connection conn = conObj.dbconnect();
				PreparedStatement ps = conn.prepareStatement("INSERT INTO `disease`"
						+ "(`disease_name`) VALUES (?)");
				ps.setString(1, disease);

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

}
