package com.getDoctors.model;

public class patient {
	private int patient_id;
	private String name;
	private String email;
	private String address;
	private int age;
	private String number;
	private String gender;
	private String pass;
	
	
	
	
	
	
	public patient(String name, String email, String address, int age, String number, String gender, String pass) {
		super();
		this.name = name;
		this.email = email;
		this.address = address;
		this.age = age;
		this.number = number;
		this.gender = gender;
		this.pass = pass;
	}
	public patient(int patient_id, String name, String email, String address, int age, String number, String gender,
			String pass) {
		super();
		this.patient_id = patient_id;
		this.name = name;
		this.email = email;
		this.address = address;
		this.age = age;
		this.number = number;
		this.gender = gender;
		this.pass = pass;
	}
	public int getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(int patient_id) {
		this.patient_id = patient_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
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
	
	
}
