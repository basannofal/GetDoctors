package com.getDoctors.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.getDoctors.model.disease;
import com.getDoctors.model.skills;

public class skilldao {
	dbconnection conObj = new dbconnection();

	public boolean Addskill(String skill, int drid) {

		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement(
					"INSERT INTO `skills` (`skill_name`, `status`, `doctor_id`) VALUES (?,?,?);");
			ps.setString(1, skill);
			ps.setString(2, "1");
			ps.setInt(3, drid);

			int rowsInserted = ps.executeUpdate();
			return rowsInserted > 0;

		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
			return false;
		}
	}

	public List<skills> Allskills() {
		List<skills> data = new ArrayList<>();
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `skills`;");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int skill_id = rs.getInt("skill_id");
				String skill_name = rs.getString("skill_name");
				String status = rs.getString("status");
				int doctor_id = rs.getInt("doctor_id");

				data.add(new skills(skill_id, skill_name, status, doctor_id));
			}

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		return data;
	}
	
	
	
	public List<skills> doctorSkills(int id) {
		List<skills> data = new ArrayList<>();
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `skills` where doctor_id = ?;");
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int skill_id = rs.getInt("skill_id");
				String skill_name = rs.getString("skill_name");
				String status = rs.getString("status");
				int doctor_id = rs.getInt("doctor_id");

				data.add(new skills(skill_id, skill_name, status, doctor_id));
			}

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		return data;
	}
	
	

	public String skillNameById(int id) {
		String data = "skills";
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT skill_name FROM `skills` where skill_id = ?;");
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				data = rs.getString("skill_name");
			}

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		return data;
	}

}
