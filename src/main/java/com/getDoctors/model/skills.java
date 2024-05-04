package com.getDoctors.model;

public class skills {

	private int skill_id ;
	private String skill_name;
	private String status;
	private int doctor_id;
	
	
	
	public skills(int skill_id, String skill_name, String status, int doctor_id) {
		super();
		this.skill_id = skill_id;
		this.skill_name = skill_name;
		this.status = status;
		this.doctor_id = doctor_id;
	}
	public skills(String skill_name, String status, int doctor_id) {
		super();
		this.skill_name = skill_name;
		this.status = status;
		this.doctor_id = doctor_id;
	}
	public int getSkill_id() {
		return skill_id;
	}
	public void setSkill_id(int skill_id) {
		this.skill_id = skill_id;
	}
	public String getSkill_name() {
		return skill_name;
	}
	public void setSkill_name(String skill_name) {
		this.skill_name = skill_name;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(int doctor_id) {
		this.doctor_id = doctor_id;
	}
}
