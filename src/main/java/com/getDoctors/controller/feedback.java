package com.getDoctors.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.getDoctors.dao.appointmentdao;
import com.getDoctors.dao.feedbackdao;

/**
 * Servlet implementation class feedback
 */
@WebServlet("/feedback")
public class feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public feedback() {
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


		String date = request.getParameter("date");
		String time = request.getParameter("time");
		int rating = Integer.parseInt(request.getParameter("rating"));
		String message = request.getParameter("message");
		int drid = Integer.parseInt(request.getParameter("drid"));
		int ptid = Integer.parseInt(request.getParameter("ptid"));

		System.out.println(date + " " + time + " ");

		feedbackdao ddao = new feedbackdao();
		boolean isSineup = ddao.AddFeedback(date, time, message, drid, ptid, rating);
		if (isSineup) {
			response.getWriter().print("<script>alert('Feedback Sended')</script>");
			response.sendRedirect("index.jsp");
			
		} else {
			request.setAttribute("errorMsg", "Please Try with another email");
			response.sendRedirect("registration.jsp");
			
		}

	}

}
