package com.getDoctors.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.getDoctors.dao.appointmentdao;
import com.getDoctors.dao.doctordao;

/**
 * Servlet implementation class appointment
 */
@WebServlet("/appointment")
public class appointment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public appointment() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		int dsid = Integer.parseInt(request.getParameter("disease"));
		String message = request.getParameter("message");
		int drid = Integer.parseInt(request.getParameter("drid"));
		int ptid = Integer.parseInt(request.getParameter("ptid"));

		System.out.println(date + " " + time + " " );

		appointmentdao ddao = new appointmentdao();
		boolean isSineup = ddao.AddAppointment(name, email, date, time, message, drid, ptid, dsid);
		if (isSineup) {
			response.getWriter().print("<script>alert('Appointment Sended')</script>");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		} else {
			request.setAttribute("errorMsg", "Please Try with another email");
			RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
			rd.forward(request, response);
		}

	}

}
