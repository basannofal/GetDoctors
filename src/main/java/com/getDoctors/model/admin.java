package com.getDoctors.model;

public class admin {

	private int id;
	private String username;
	private String pass;

	public admin(int id, String username, String pass, String number, String email) {
		super();
		this.id = id;
		this.username = username;
		this.pass = pass;
		this.number = number;
		this.email = email;
	}

	public admin(String username, String pass, String number, String email) {
		super();
		this.username = username;
		this.pass = pass;
		this.number = number;
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	private String number;
	private String email;

}
