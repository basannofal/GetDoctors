package com.getDoctors.model;

public class appointment {
	private int appointment_id;
	private String patient_name;
	private String patient_email;
	private String appointment_date;
	private String appointment_time;
	private String appointment_status;
	private String additional_note;
	private int doctor_id;
	private int patient_id;
	private String disease;
	public appointment(int appointment_id, String patient_name, String patient_email, String appointment_date,
			String appointment_time, String appointment_status, String additional_note, int doctor_id, int patient_id,
			String disease) {
		super();
		this.appointment_id = appointment_id;
		this.patient_name = patient_name;
		this.patient_email = patient_email;
		this.appointment_date = appointment_date;
		this.appointment_time = appointment_time;
		this.appointment_status = appointment_status;
		this.additional_note = additional_note;
		this.doctor_id = doctor_id;
		this.patient_id = patient_id;
		this.disease = disease;
	}
	public appointment(String patient_name, String patient_email, String appointment_date, String appointment_time,
			String appointment_status, String additional_note, int doctor_id, int patient_id, String disease) {
		super();
		this.patient_name = patient_name;
		this.patient_email = patient_email;
		this.appointment_date = appointment_date;
		this.appointment_time = appointment_time;
		this.appointment_status = appointment_status;
		this.additional_note = additional_note;
		this.doctor_id = doctor_id;
		this.patient_id = patient_id;
		this.disease = disease;
	}
	public int getAppointment_id() {
		return appointment_id;
	}
	public void setAppointment_id(int appointment_id) {
		this.appointment_id = appointment_id;
	}
	public String getPatient_name() {
		return patient_name;
	}
	public void setPatient_name(String patient_name) {
		this.patient_name = patient_name;
	}
	public String getPatient_email() {
		return patient_email;
	}
	public void setPatient_email(String patient_email) {
		this.patient_email = patient_email;
	}
	public String getAppointment_date() {
		return appointment_date;
	}
	public void setAppointment_date(String appointment_date) {
		this.appointment_date = appointment_date;
	}
	public String getAppointment_time() {
		return appointment_time;
	}
	public void setAppointment_time(String appointment_time) {
		this.appointment_time = appointment_time;
	}
	public String getAppointment_status() {
		return appointment_status;
	}
	public void setAppointment_status(String appointment_status) {
		this.appointment_status = appointment_status;
	}
	public String getAdditional_note() {
		return additional_note;
	}
	public void setAdditional_note(String additional_note) {
		this.additional_note = additional_note;
	}
	public int getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(int doctor_id) {
		this.doctor_id = doctor_id;
	}
	public int getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(int patient_id) {
		this.patient_id = patient_id;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	
	
	
	
}
