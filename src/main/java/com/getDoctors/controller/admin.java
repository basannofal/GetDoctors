package com.getDoctors.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class admin
 */
@WebServlet("/admin/*")
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public admin() {
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
		String path = request.getPathInfo();
		switch (path) {
		case "/adminlogin":
			System.out.print("REAC");
			response.sendRedirect("/adminlogin.jsp");
//			redirectPath(request, response, "adminlogin.jsp");
			break;
		default:

			System.out.print("REAC");
			response.sendRedirect("adminlogin.jsp");
		}
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

	protected void redirectPath(HttpServletRequest request, HttpServletResponse response, String filename)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher(filename);
		dispatcher.forward(request, response);
	}

}
