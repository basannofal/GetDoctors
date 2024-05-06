<%@page import="com.getDoctors.model.feedback"%>
<%@page import="com.getDoctors.dao.feedbackdao"%>
<%@page import="com.getDoctors.model.doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.getDoctors.dao.doctordao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Feedbacks</title>
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
			<h1 class="title">All Feedbacks</h1>
			<ul class="breadcrumbs">
				<li><a href="#">Home</a></li>
				<li class="divider">/</li>
				<li><a href="#" class="active">All Feedbacks</a></li>
			</ul>

			<div class="data">
				<div class="content-data">
					<div class="head">
						<h3>All Feedbacks</h3>

					</div>
					<div>








						<table id="customers">
							<tr>
								<th>Id</th>
								<th>Message</th>
								<th>Date & Time</th>
								<th>Rating</th>
								<th>Doctor</th>
								<th>Patient</th>
								<th>Action</th>
							</tr>
							<tbody>
								<%
								feedbackdao fdao = new feedbackdao();
								List<feedback> feedbacks = fdao.AllFeedback();

								for (feedback dr : feedbacks ) {
								%>
								<tr>
									<td><%=dr.getReview_id()%></td>
									<td><%=dr.getReview_text()%></td>
									<td><%=dr.getReview_date_time()%></td>
									<td><%=dr.getRating()%></td>
									<td><%=dr.getDoctor_id()%></td>
									<td><%=dr.getPatient_id()%></td>
									
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