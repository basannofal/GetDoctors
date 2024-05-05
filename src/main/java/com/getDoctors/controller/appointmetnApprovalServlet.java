package com.getDoctors.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.getDoctors.dao.appointmentdao;
import com.getDoctors.dao.doctordao;

/**
 * Servlet implementation class appointmetnApprovalServlet
 */
@WebServlet("/appointmetnApprovalServlet")
public class appointmetnApprovalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public appointmetnApprovalServlet() {
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
		String action = request.getParameter("action");

		if (action != null) {
			switch (action) {
			case "approve":
				approveDoctor(request, response);
				break;
			case "reject":
				rejectDoctor(request, response);
				break;
			default:
				// handle invalid action
				break;
			}
		}
	}

	private void approveDoctor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int doctorId = Integer.parseInt(request.getParameter("appId"));
		int drid = Integer.parseInt(request.getParameter("drid"));

		appointmentdao ddao = new appointmentdao();
		ddao.approveAppoitment(doctorId);
		// Redirect back to the page after approval
		response.sendRedirect(request.getContextPath() + "/views/doctorPanel/doctorappointment.jsp?drid="+doctorId);
	}

	private void rejectDoctor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int doctorId = Integer.parseInt(request.getParameter("appId"));
		int drid = Integer.parseInt(request.getParameter("drid"));

		appointmentdao ddao = new appointmentdao();
		ddao.rejectAppoitment(doctorId);
		// Redirect back to the page after rejection
		response.sendRedirect(request.getContextPath() + "/views/doctorPanel/doctorappointment.jsp?drid="+doctorId);
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
