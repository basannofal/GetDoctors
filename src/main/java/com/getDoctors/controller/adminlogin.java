package com.getDoctors.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.getDoctors.dao.admindao;

/**
 * Servlet implementation class adminlogin
 */
@WebServlet("/adminlogin")
public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public adminlogin() {
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
		response.sendRedirect(request.getContextPath() + "/adminlogin.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("username");
		String pass = request.getParameter("pass");
		admindao admin = new admindao();
		int isAuth = admin.loginAuth(uname, pass);

		if (isAuth != 0) {
			HttpSession session = request.getSession();
			int role = 1;
			session.setAttribute("userType", role);
			session.setAttribute("userId", isAuth);
			response.sendRedirect("views/admin/admindashboard.jsp");
		} else {
			request.setAttribute("errorMsg", "Invalid username or password");
			RequestDispatcher rd = request.getRequestDispatcher("adminlogin.jsp");
			rd.forward(request, response);

		}

	}

}
