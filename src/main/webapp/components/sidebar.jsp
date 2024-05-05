<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!-- SIDEBAR -->
<section id="sidebar">

	<%!int roleid = 0; int userid = 0; boolean isLoggedIn= false;%>

	<%
	try {
		// Check if the user is logged in
		isLoggedIn = (session != null && session.getAttribute("userType") != null);
		Integer role = isLoggedIn ? (Integer) session.getAttribute("userType") : null;
		int uid = isLoggedIn ? (int) session.getAttribute("userId") : null;
		roleid = role;
		userid = uid;
		if (!isLoggedIn) {
			response.sendRedirect(request.getContextPath() + "adminlogin.jsp");
		}
	} catch (Exception e) {
		e.printStackTrace();
		out.print("" + e);
	}
	%>

	<a href="#" class="brand"><i class='bx bxs-smile icon'></i>
		
		<%
	if (roleid != 0 && roleid == 1) {
	%>
	Admin Panel
		<%
	}
	%>

	<%
	if (roleid != 0 && roleid == 2) {
	%>
	Doctor Panel
	<%
	}
	%>
	
	<%
	if (roleid != 0 && roleid == 3) {
	%>
	Patient Panel
	<%
	}
	%>

		</a>

	<%
	if (roleid != 0 && roleid == 1) {
	%>
	<ul class="side-menu">
		<li><a href="#" class="active"><i
				class='bx bxs-dashboard icon'></i> Dashboard</a></li>
		<li class="divider" data-text="Doctors">Doctors</li>
		<li><a href="#"><i class='bx bxs-inbox icon'></i> Doctor <i
				class='bx bx-chevron-right icon-right'></i></a>
			<ul class="side-dropdown">
				<li><a
					href="<%=request.getContextPath()%>/views/admin/approveddoctor.jsp">Approved
						Doctors</a></li>
				<li><a
					href="<%=request.getContextPath()%>/views/admin/rejecteddoctor.jsp">Rejected
						Doctors</a></li>
				<li><a
					href="<%=request.getContextPath()%>/views/admin/requesteddoctor.jsp">Requested
						Doctors</a></li>
			</ul></li>
		<li><a
			href="<%=request.getContextPath()%>/views/admin/alldoctors.jsp"><i
				class='bx bxs-chart icon'></i> All Doctors</a></li>

		<li class="divider" data-text="Patients">Patients</li>
		<li><a
			href="<%=request.getContextPath()%>/views/admin/allpatients.jsp"><i
				class='bx bx-table icon'></i> All Patients ${role} ${userid}
				${isLoggedIn } j</a></li>

		<li class="divider" data-text="Disease">Disease</li>
		<li><a
			href="<%=request.getContextPath()%>/views/admin/alldisease.jsp"><i
				class='bx bxs-notepad icon'></i> Disease</a></li>

		<li class="divider" data-text="Feedback">Feedback</li>
		<li><a
			href="<%=request.getContextPath()%>/views/admin/allfeedback.jsp"><i
				class='bx bx-table icon'></i> Feedbacks</a></li>


	</ul>

	<%
	}
	%>

	<%
	if (roleid != 0 && roleid == 2) {
	%>
	<ul class="side-menu">
		<li><a href="#" class="active"><i
				class='bx bxs-dashboard icon'></i> Dashboard</a></li>
		
		<li class="divider" data-text="Appointment">Appointment</li>
		<li><a
			href="<%=request.getContextPath()%>/views/doctorPanel/doctorappointment.jsp?drid=<%=userid%>"><i
				class='bx bx-table icon'></i> Appointment</a></li>

		<li class="divider" data-text="Disease">Disease</li>
		<li><a
			href="<%=request.getContextPath()%>/views/doctorPanel/doctorskills.jsp?drid=<%=userid%>"><i
				class='bx bxs-notepad icon'></i> Skills</a></li>

		<li class="divider" data-text="Feedback">Feedback</li>
		<li><a
			href="<%=request.getContextPath()%>/views/doctorPanel/doctorfeedback.jsp?drid=<%=userid%>"><i
				class='bx bx-table icon'></i> Feedbacks</a></li>

	<li class="divider" data-text="Profile">Profile</li>
		<li><a
			href="<%=request.getContextPath()%>/views/doctorPanel/doctorprofile.jsp?drid=<%=userid%>"><i
				class='bx bx-table icon'></i> Profile</a></li>


	</ul>

	<%
	}
	%>
	
	
	
	
	
		<%
	if (roleid != 0 && roleid == 3) {
	%>
	<ul class="side-menu">
		<li><a href="#" class="active"><i
				class='bx bxs-dashboard icon'></i> Dashboard</a></li>
		
		<li class="divider" data-text="My Appointment">My Appointment</li>
		<li><a
			href="<%=request.getContextPath()%>/views/patientPanel/patientAppointments.jsp?ptid=<%=userid%>"><i
				class='bx bx-table icon'></i> Appointment</a></li>

		<li class="divider" data-text="Feedback">Feedbacks</li>
		<li><a
			href="<%=request.getContextPath()%>/views/patientPanel/patientfeedback.jsp?ptid=<%=userid%>"><i
				class='bx bx-table icon'></i> Feedbacks</a></li>

	<li class="divider" data-text="Profile">Profile</li>
		<li><a
			href="<%=request.getContextPath()%>/views/patientPanel/patientprofile.jsp?ptid=<%=userid%>"><i
				class='bx bx-table icon'></i> Profile</a></li>


	</ul>

	<%
	}
	%>


</section>
<!-- SIDEBAR -->