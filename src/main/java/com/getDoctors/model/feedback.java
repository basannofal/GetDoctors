package com.getDoctors.model;

public class feedback {
	private int review_id;
	private int rating;
	private String review_text ;
	private String  review_date_time;
	private int doctor_id;
	private int patient_id;
	
	
	
	
	public feedback(int rating, String review_text, String review_date_time, int doctor_id, int patient_id) {
		super();
		this.rating = rating;
		this.review_text = review_text;
		this.review_date_time = review_date_time;
		this.doctor_id = doctor_id;
		this.patient_id = patient_id;
	}
	public feedback(int review_id, int rating, String review_text, String review_date_time, int doctor_id,
			int patient_id) {
		super();
		this.review_id = review_id;
		this.rating = rating;
		this.review_text = review_text;
		this.review_date_time = review_date_time;
		this.doctor_id = doctor_id;
		this.patient_id = patient_id;
	}
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getReview_text() {
		return review_text;
	}
	public void setReview_text(String review_text) {
		this.review_text = review_text;
	}
	public String getReview_date_time() {
		return review_date_time;
	}
	public void setReview_date_time(String review_date_time) {
		this.review_date_time = review_date_time;
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
	
	
}
