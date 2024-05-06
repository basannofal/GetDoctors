<%@page import="com.getDoctors.model.doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.getDoctors.dao.doctordao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Health Care</title>
<link rel="stylesheet" href="assests/client/css/bootstrap.min.css">
<link rel="stylesheet" href="assests/client/css/font-awesome.min.css">
<link rel="stylesheet" href="assests/client/css/animate.css">
<link rel="stylesheet" href="assests/client/css/owl.carousel.css">
<link rel="stylesheet"
	href="assests/client/css/owl.theme.default.min.css">

<!-- MAIN CSS -->
<link rel="stylesheet" href="assests/client/css/tooplate-style.css">
</head>

<body id="top" data-spy="scroll" data-target=".navbar-collapse"
	data-offset="50">

	<%!int roleid = 0;
	int userid = 0;
	boolean isLoggedIn = false;%>

	<%
	try {
		// Check if the user is logged in
		isLoggedIn = (session != null && session.getAttribute("userType") != null);
		Integer role = isLoggedIn ? (Integer) session.getAttribute("userType") : null;
		int uid = isLoggedIn ? (int) session.getAttribute("userId") : null;
		roleid = role;
		userid = uid;

	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
	<!-- PRE LOADER -->
	<section class="preloader">
		<div class="spinner">

			<span class="spinner-rotate"></span>

		</div>
	</section>


	<jsp:include page="components/client/navbar.jsp"></jsp:include>



	<!-- MAKE AN APPOINTMENT -->
	<section id="appointment" data-stellar-background-ratio="3">
		<div class="container">
			<div class="row">

				<div class="col-md-6 col-sm-6">
					<img src="assests/client/images/img/12.png" class="img-responsive"
						alt="">
				</div>

				<div class="col-md-6 col-sm-6">
					<!-- CONTACT FORM HERE -->
					<div class="section-title wow fadeInUp" data-wow-delay="0.4s">
						<h2>Welcome to Our Expert Medical Team</h2>
					</div>
					<div class="wow fadeInUp" data-wow-delay="0.8s">
						<p>At Health Center, we're proud to introduce our esteemed
							panel of doctors, all dedicated to providing exceptional
							healthcare services. Our team comprises highly skilled
							professionals from various medical specialties, committed to
							delivering personalized care and ensuring the well-being of our
							patients.</p>
						<p>Thank you for choosing Health Center for your healthcare
							needs. We look forward to serving you and helping you achieve
							optimal health and well-being.</p>
					</div>
				</div>

			</div>
		</div>
	</section>



	<!-- TEAM -->
	<section id="team" data-stellar-background-ratio="1">
		<div class="container">
			<div class="row">

				<div class="col-md-12 col-sm-12"
					style="display: flex; justify-content: space-between; align-items: center;">
					<div class="about-info">
						<h2 class="wow fadeInUp" data-wow-delay="0.1s">Our Doctors</h2>
					</div>
					<div>
						<form class="form-inline" action="searchDoctors" method="post">
							<input class="form-control mr-sm-2" type="search"
								placeholder="Find Doctor Name, Specilization"
								aria-label="Search" id="searchInput" name="query"> <input
								class="form-control mr-sm-2" type="hidden" name="ptid"
								value="<%=userid%>">
							<button class="btn btn-outline-success my-2 my-sm-0"
								type="submit">Find</button>
						</form>
					</div>
				</div>

				<div class="clearfix"></div>



				<%
				doctordao ddao = new doctordao();
				List<doctor> doctors = ddao.AllDoctors();

				for (doctor dr : doctors) {
				%>

				<div class="col-md-4 col-sm-6">
					<div class="team-thumb wow fadeInUp" data-wow-delay="0.6s">
						<img src="assests/img/doctor.avif" class="img-responsive" alt="">

						<div class="team-info">
							<h3><%=dr.getFname()%></h3>
							<p style="margin-top: 10px;">
								Qualification :
								<%=dr.getQualification()%></p>
							<p>
								Specialization :
								<%=dr.getSpecilization()%>
							</p>
							<div class="team-contact-info">
								<p>
									<i class="fa fa-phone"></i>
									<%=dr.getNumber()%>
								</p>
								<p>
									<i class="fa fa-envelope-o"></i> <a href="#"><%=dr.getEmail()%></a>
								</p>
							</div>
							<div class="team-contact-info"
								style="padding-bottom: 20px; display: flex; justify-content: space-between;">

								<%
								if (isLoggedIn && userid == 3) {
								%>
								<a
									href="feedback.jsp?ptid=<%=userid%>&drid=<%=dr.getDoctor_id()%>&drname=<%=dr.getFname()%>">
									<button class="btn btn-outline-primary">Give Feedback</button>
								</a>
								<%
								} else {
								%>
								<a href="login.jsp">
									<button class="btn btn-outline-primary">Give Feedback</button>
								</a>
								<%
								}
								%>



								<%
								if (isLoggedIn && userid == 3) {
								%>
								<a
									href="appointment.jsp?ptid=<%=userid%>&drid=<%=dr.getDoctor_id()%>&drname=<%=dr.getFname()%>">
									<button class="btn btn-primary">Make appointment</button>
								</a>
								<%
								} else {
								%>
								<a href="login.jsp">
									<button class="btn btn-primary">Make appointment</button>
								</a>
								<%
								}
								%>


							</div>

						</div>

					</div>
				</div>



				<%
				}
				%>

			</div>
		</div>
	</section>





	<jsp:include page="components/client/footer.jsp"></jsp:include>


	<!-- SCRIPTS -->
	<script src="assests/client/js/jquery.js"></script>
	<script src="assests/client/js/bootstrap.min.js"></script>
	<script src="assests/client/js/jquery.sticky.js"></script>
	<script src="assests/client/js/jquery.stellar.min.js"></script>
	<script src="assests/client/js/wow.min.js"></script>
	<script src="assests/client/js/smoothscroll.js"></script>
	<script src="assests/client/js/owl.carousel.min.js"></script>
	<script src="assests/client/js/custom.js"></script>


</body>
</html>