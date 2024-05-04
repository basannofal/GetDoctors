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

</head>
<body>




	<jsp:include page="../../components/sidebar.jsp"></jsp:include>

	<!-- NAVBAR -->
	<section id="content">

		<jsp:include page="../../components/navbar.jsp"></jsp:include>
		<!-- MAIN -->
		<main>
			<h1 class="title">All Doctors</h1>
			<ul class="breadcrumbs">
				<li><a href="#">Home</a></li>
				<li class="divider">/</li>
				<li><a href="#" class="active">All Doctors</a></li>
			</ul>

			<div class="data">
				<div class="content-data">
					<div class="head">
						<h3>All Doctors</h3>
						<div class="menu">
							<i class='bx bx-dots-horizontal-rounded icon'></i>
							<ul class="menu-link">
								<li><a href="#">Edit</a></li>
								<li><a href="#">Save</a></li>
								<li><a href="#">Remove</a></li>
							</ul>
						</div>
					</div>
					<div>








						<table id="customers">
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Email</th>
								<th>Number</th>
								<th>Specialization</th>
								<th>Qualification</th>
								<th>Experience</th>
								<th>Action</th>
							</tr>
							<tbody>
								<%
								doctordao ddao = new doctordao();
								List<doctor> doctors = ddao.ApproveDoctors();

								for (doctor dr : doctors) {
								%>
								<tr>
									<td><%=dr.getDoctor_id()%></td>
									<td><%=dr.getFname()%></td>
									<td><%=dr.getEmail()%></td>
									<td><%=dr.getNumber()%></td>
									<td><%=dr.getSpecilization()%></td>
									<td><%=dr.getQualification()%></td>
									<td><%=dr.getExp()+""%></td>
									<td>
										<div class="head">


											<div class="menu">
												<i class='bx bx-dots-horizontal-rounded icon'></i>
												<ul class="menu-link">
													<li><a href="edit?id=<c:out value='${user.id}'/>">Edit</a></li>
													<li><a href="delete?id=<c:out value='${user.id}'/>">Delete</a></li>
												</ul>
											</div>
										</div>
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