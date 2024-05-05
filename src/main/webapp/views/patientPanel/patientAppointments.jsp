<%@page import="com.getDoctors.dao.diseasedao"%>
<%@page import="com.getDoctors.model.appointment"%>
<%@page import="com.getDoctors.dao.appointmentdao"%>
<%@page import="com.getDoctors.model.doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.getDoctors.dao.doctordao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet" href="../../assests/css/adminStyle.css">

<link rel="stylesheet" href="../../assests/css/table.css">

<style>
.normal-row {
	/* Style for normal row */
	
}

.green-row {
	color: green; /* Style for green font */
}

.red-row {
	color: red; /* Style for red font */
}

.alert {
	padding: 5px;
	border: 1px solid transparent;
	border-radius: .25rem;
}

.alert-success {
	color: #155724;
	background-color: #d4edda;
	border-color: #c3e6cb;
}

.alert-danger {
	color: #721c24;
	background-color: #f8d7da;
	border-color: #f5c6cb;
}

.alert-warning {
	color: #856404;
	background-color: #fff3cd;
	border-color: #ffeeba;
}
</style>


</head>
<body>




	<jsp:include page="../../components/sidebar.jsp"></jsp:include>

	<!-- NAVBAR -->
	<section id="content">

		<jsp:include page="../../components/navbar.jsp"></jsp:include>
		<!-- MAIN -->
		<main>
			<h1 class="title">All Appointments</h1>
			<ul class="breadcrumbs">
				<li><a href="#">Home</a></li>
				<li class="divider">/</li>
				<li><a href="#" class="active">All Appointments</a></li>
			</ul>

			<div class="data">
				<div class="content-data">
					<div class="head">
						<h3>All Appointments</h3>

					</div>
					<div>








						<table id="customers">
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Email</th>
								<th>Date</th>
								<th>Time</th>
								<th>Additional Note</th>
								<th>Disease</th>
								<th>Status</th>
							</tr>
							<tbody>
								<%
								appointmentdao fdao = new appointmentdao();
								diseasedao ddao = new diseasedao();
								int drid = Integer.parseInt(request.getParameter("ptid"));
								List<appointment> appointments = fdao.PatientsAppointments(drid);

								for (appointment dr : appointments) {
									String str = ddao.DiseaseById(Integer.parseInt(dr.getDisease()));
									String rowClass = "normal-row"; // Default class
									switch (dr.getAppointment_status()) {
									case "1":
										rowClass = "green-row"; // Green font
										break;
									case "2":
										rowClass = "red-row"; // Red font
										break;
									}
								%>
								<tr class="<%=rowClass%>">
									<td><%=dr.getAppointment_id()%></td>
									<td><%=dr.getPatient_name()%></td>
									<td><%=dr.getPatient_email()%></td>
									<td><%=dr.getAppointment_date()%></td>
									<td><%=dr.getAppointment_time()%></td>
									<td><%=dr.getAdditional_note()%></td>
									<td><%=str%></td>
									<td>
										<%
										if (rowClass == "normal-row") {
										%>
										<div class="alert alert-warning" role="alert">Pending</div> <%
 }
 %> <%
 if (rowClass == "green-row") {
 %>
										<div class="alert alert-success" role="alert">Approved</div> <%
 }
 %> <%
 if (rowClass == "red-row") {
 %>
										<div class="alert alert-danger" role="alert">Rejected</div> <%
 }
 %>
									</td>
								</tr>
								<%
								}
								%>

							</tbody>


						</table>

					</div>
				</div>
			</div>
		</main>
		<!-- MAIN -->
	</section>
	<!-- NAVBAR -->
	<script type="text/javascript" src="../../assests/js/script.js"></script>

	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

</body>

</html>