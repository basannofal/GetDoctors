package com.getDoctors.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.getDoctors.dao.doctordao;
import com.getDoctors.dao.patientdao;

/**
 * Servlet implementation class doctorlogin
 */
@WebServlet("/doctorlogin")
public class doctorlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public doctorlogin() {
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
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		doctordao doctor = new doctordao();
		int isAuth = doctor.doctorlogin(email, pass);

		if (isAuth != 0) {
			HttpSession session = request.getSession();
			session.setAttribute("userType", 2);
			session.setAttribute("userId", isAuth);
			response.sendRedirect("views/doctorPanel/doctordashboard.jsp");
		} else {
			request.setAttribute("errorMsg", "Invalid username or password");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);

		}

	}

}
