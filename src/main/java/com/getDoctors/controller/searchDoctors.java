package com.getDoctors.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.getDoctors.dao.doctordao;
import com.getDoctors.model.doctor;

/**
 * Servlet implementation class searchDoctors
 */
@WebServlet("/searchDoctors")
public class searchDoctors extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public searchDoctors() {
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
		List<doctor> doctors = null;
		String ptid = request.getParameter("ptid");
		doctordao ddao = new doctordao();
		doctors = ddao.AllDoctors();
		request.setAttribute("doctors", doctors);
		RequestDispatcher dispatcher = request.getRequestDispatcher("searchdoctors.jsp?ptid="+ptid);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String ptid = request.getParameter("ptid");
		// TODO Auto-generated method stub
		String query = request.getParameter("query");
	    System.out.print("CCdddddddddd" + query);

		List<doctor> doctors = null;
		if (query != null && !query.isEmpty()) {
			doctordao ddao = new doctordao();
			doctors = ddao.searchDoctors(query);
		} else {
			doctordao ddao = new doctordao();
			doctors = ddao.AllDoctors();
		}
		request.setAttribute("doctors", doctors);
		RequestDispatcher dispatcher = request.getRequestDispatcher("searchdoctors.jsp?ptid="+ptid+"&query="+query);
		dispatcher.forward(request, response);
	}

}
