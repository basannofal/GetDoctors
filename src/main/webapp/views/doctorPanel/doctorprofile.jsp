<%@page import="java.util.List"%>
<%@page import="com.getDoctors.dao.doctordao"%>
<%@page import="com.getDoctors.model.doctor"%>
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
<link rel="stylesheet" href="../../assests/css/profile.css">

</head>
<body>

	<%!doctor dr;%>

	<%
	try {
		doctordao fdao = new doctordao();
		int drid = Integer.parseInt(request.getParameter("drid"));
		dr = fdao.GetDoctorByID(drid);

		// Check if the user is logged in

	} catch (Exception e) {
		e.printStackTrace();
		out.print("" + e);
	}
	%>

	<jsp:include page="../../components/sidebar.jsp"></jsp:include>

	<!-- NAVBAR -->
	<section id="content">


		<jsp:include page="../../components/navbar.jsp"></jsp:include>
		<!-- MAIN -->
		<main>
			<h1 class="title">Dashboard</h1>
			<ul class="breadcrumbs">
				<li><a href="#">Home</a></li>
				<li class="divider">/</li>
				<li><a href="#" class="active">Dashboard</a></li>
			</ul>

			<div class="data">
				<div class="content-data">
					<div class="head">
						<h3>Profile</h3>

					</div>

					<div class="wrapper">
						<div class="left">
							<img src="../../assests/img/usericon.png" alt="user" width="100">
							<h2><%=dr.getFname()%></h2>
							<p style="font-size: 18px;"><%=dr.getQualification()%></p>
						</div>
						<div class="right">
							<div class="info">
								<h3>Information</h3>
								<div class="info_data">
									<div class="data">
										<h4>Email</h4>
										<p><%=dr.getEmail()%></p>
									</div>
									<div class="data">
										<h4>Phone</h4>
										<p><%=dr.getNumber()%></p>
									</div>
								</div>
								
								<div class="projects_data">
									<div class="data">
										<h4>Address</h4>
										<p><%=dr.getAddress()%></p>
									</div>
									<div class="data">
										<h4>Age</h4>
										<p><%=dr.getGender()%>
											
										</p>
									</div>
								</div>
							</div>

							<div class="projects">
								<h3>Qualities</h3>
								<div class="projects_data">
									<div class="data">
										<h4>Specialization</h4>
										<p><%=dr.getSpecilization()%></p>
									</div>
									<div class="data">
										<h4>Experience</h4>
										<p><%=dr.getExp()%>
											Year
										</p>
									</div>
								</div>
							</div>

							<div class="social_media">
								<ul>
									<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
									<li><a href="#"><i class="fab fa-twitter"></i></a></li>
									<li><a href="#"><i class="fab fa-instagram"></i></a></li>
								</ul>
							</div>
						</div>
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

	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>

</body>
</html>