package com.getDoctors.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.getDoctors.model.disease;
import com.getDoctors.model.doctor;

public class diseasedao {

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

	
	
	
	public List<disease> AllDisease() {
		List<disease> data = new ArrayList<>();
		try {
			Connection conn = conObj.dbconnect();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM `disease`;");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				int disease_id = rs.getInt("disease_id");
				String disease_name = rs.getString("disease_name");

				data.add(new disease(disease_id, disease_name));
			}

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}
		return data;
	}

}
