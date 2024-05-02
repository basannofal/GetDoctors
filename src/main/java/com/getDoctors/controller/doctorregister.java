package com.getDoctors.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.getDoctors.dao.doctordao;
import com.getDoctors.dao.patientdao;

/**
 * Servlet implementation class doctorregister
 */
@WebServlet("/doctorregister")
public class doctorregister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public doctorregister() {
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
		response.sendRedirect(request.getContextPath() + "/registration.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String speci = request.getParameter("specialization");
		String exp = request.getParameter("exp");
		String quali = request.getParameter("qualification");
		String pass = request.getParameter("pass");
		String cpass = request.getParameter("cpass");
		String gender = request.getParameter("gender");
		
		
		System.out.println(pass + " " + cpass);
		if (pass.equals(cpass)) {
			System.out.println("/n Called ");
			String fullname = fname.trim() + " " + lname.trim();
			doctordao ddao = new doctordao();
			boolean isSineup = ddao.registerDoctor(fullname, email, phone, address, speci, exp, quali, gender, cpass);
			if (isSineup) {
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			} else {
				request.setAttribute("errorMsg", "Please Try with another email");
				RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
				rd.forward(request, response);
			}
		} else {
			request.setAttribute("errorMsg", "password Not Match");
			RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
			rd.forward(request, response);
		}
	}

}
