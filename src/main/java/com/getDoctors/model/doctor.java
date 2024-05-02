package com.getDoctors.model;

public class doctor {
	private int doctor_id;
	private String fname;
	private String lname;
	private String email;
	private String number;
	private String address;
	private String specilization;
	private String exp;
	private String qualification;
	private String gender;
	private String pass;
	private String profile;
	
	
	
	
	
	public doctor(int doctor_id, String fname, String lname, String email, String number, String address,
			String specilization, String exp, String qualification, String gender, String pass, String profile) {
		super();
		this.doctor_id = doctor_id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.number = number;
		this.address = address;
		this.specilization = specilization;
		this.exp = exp;
		this.qualification = qualification;
		this.gender = gender;
		this.pass = pass;
		this.profile = profile;
	}
	public doctor(String fname, String lname, String email, String number, String address, String specilization,
			String exp, String qualification, String gender, String pass, String profile) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.number = number;
		this.address = address;
		this.specilization = specilization;
		this.exp = exp;
		this.qualification = qualification;
		this.gender = gender;
		this.pass = pass;
		this.profile = profile;
	}
	public int getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(int doctor_id) {
		this.doctor_id = doctor_id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSpecilization() {
		return specilization;
	}
	public void setSpecilization(String specilization) {
		this.specilization = specilization;
	}
	public String getExp() {
		return exp;
	}
	public void setExp(String exp) {
		this.exp = exp;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	
	
	
}
