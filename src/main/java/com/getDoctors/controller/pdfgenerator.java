package com.getDoctors.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.getDoctors.dao.appointmentdao;

/**
 * Servlet implementation class pdfgenerator
 */
@WebServlet("/pdfgenerator")
public class pdfgenerator extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public pdfgenerator() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<com.getDoctors.model.appointment> appointments = new ArrayList<>();

		appointmentdao apd = new appointmentdao();
		appointments = apd.DoctorAppointment(1);

		com.getDoctors.dao.pdfgenerator pdfGenerator = new com.getDoctors.dao.pdfgenerator();
		pdfGenerator.generateAppointmentPdf("appointment_report.pdf", appointments);


		response.setContentType("application/pdf");


		response.setHeader("Content-disposition", "inline; filename=appointment_report.pdf");

		// Send the PDF file to client
		response.getOutputStream().flush();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
