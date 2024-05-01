<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
try {
	// Check if the user is logged in
	boolean isLoggedIn = (session != null && session.getAttribute("userType") != null);
	int role = isLoggedIn ? (int) session.getAttribute("userType") : null;
	if (!isLoggedIn) {
		response.sendRedirect(request.getContextPath() + "adminlogin.jsp");
	}
} catch (Exception e) {
	e.printStackTrace();
	out.print("" + e);
}
%>

<!-- SIDEBAR -->
<section id="sidebar">
	<a href="#" class="brand"><i class='bx bxs-smile icon'></i>
		AdminSite</a>
	<ul class="side-menu">
		<li><a href="#" class="active"><i
				class='bx bxs-dashboard icon'></i> Dashboard</a></li>
		<li class="divider" data-text="Doctors">Doctors</li>
		<li><a href="#"><i class='bx bxs-inbox icon'></i> Doctor <i
				class='bx bx-chevron-right icon-right'></i></a>
			<ul class="side-dropdown">
				<li><a href="#">Approved Doctors</a></li>
				<li><a href="#">Rejected Doctors</a></li>
				<li><a href="#">Requested Doctors</a></li>
			</ul></li>
		<li><a href="#"><i class='bx bxs-chart icon'></i> All Doctors</a></li>

		<li class="divider" data-text="Patients">Patients</li>
		<li><a href="#"><i class='bx bx-table icon'></i> All Patients</a></li>
					
			<li class="divider" data-text="Disease">Disease</li>
		<li><a href="#"><i class='bx bxs-notepad icon'></i> Disease <i
				class='bx bx-chevron-right icon-right'></i></a>
			<ul class="side-dropdown">
				<li><a href="#">All Disease</a></li>
				<li><a href="#">Add Disease</a></li>
			</ul></li>
			
			<li class="divider" data-text="Feedback">Feedback</li>
		<li><a href="#"><i class='bx bx-table icon'></i> Feedbacks</a></li>
			
			<li class="divider" data-text="Profile">Profile</li>
		<li><a href="#"><i class='bx bx-table icon'></i> Profile</a></li>
	</ul>

</section>
<!-- SIDEBAR -->