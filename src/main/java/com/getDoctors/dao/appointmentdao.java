package com.getDoctors.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.getDoctors.model.appointment;
import com.getDoctors.model.feedback;

public class appointmentdao {
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

	

	
	
	public List<appointment> DoctorAppointment(int id) {
		List<appointment> data = new ArrayList<>();
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `appointment` where doctor_id = ?;");
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int appointment_id = rs.getInt("appointment_id");
				String patient_name = rs.getString("patient_name");
				String patient_email = rs.getString("patient_email");
				String appointment_date = rs.getString("appointment_date");
				String appointment_time = rs.getString("appointment_time");
				String appointment_status = rs.getString("appointment_status");
				String additional_note = rs.getString("additional_note");
				int doctor_id = rs.getInt("doctor_id");
				int patient_id = rs.getInt("patient_id");
				String disease = rs.getString("disease");
				

				data.add(new appointment(appointment_id, patient_name, patient_email, appointment_date,
						appointment_time, appointment_status, additional_note, doctor_id, patient_id, disease));
			}

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		return data;
	}
	
	
	
	
	public boolean approveAppoitment(int id) {

		try {
				Connection conn = conObj.dbconnect();
				PreparedStatement ps = conn.prepareStatement("UPDATE `appointment` SET appointment_status = 1 where appointment_id = ?");
				ps.setInt(1, id);

				int rowsInserted = ps.executeUpdate();
				return rowsInserted > 0;
		} catch (Exception e) {
			
			System.out.println(e);
			e.printStackTrace();
			return false;
		}
	}
	
	
	public boolean rejectAppoitment(int id) {

		try {
				Connection conn = conObj.dbconnect();
				PreparedStatement ps = conn.prepareStatement("UPDATE `appointment` SET appointment_status = 2 where appointment_id = ?");
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
