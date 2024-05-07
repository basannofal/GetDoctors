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


	<!-- ABOUT -->
	<section id="about">
		<div class="container">
			<div class="row">

				<div class="col-md-6 col-sm-6">
					<div class="about-info">
						<h2 class="wow fadeInUp" data-wow-delay="0.6s">
							Welcome to Your <i class="fa fa-h-square"></i>ealth Center
						</h2>
						<div class="wow fadeInUp" data-wow-delay="0.8s">
							<p>Your Health Center serves as a comprehensive hub where
								patients can easily find and book appointments with registered
								doctors. Whether you're seeking a specialist or a general
								practitioner, our platform offers a diverse range of medical
								professionals to cater to your needs.</p>
							<p>Gone are the days of long waiting times and endless phone
								calls to schedule appointments. With Your Health Center,
								patients can book appointments with their preferred doctors at
								their convenience. Our user-friendly interface ensures a
								hassle-free booking process, allowing you to focus on what truly
								matters - your health.</p>
						</div>
						<figure class="profile wow fadeInUp" data-wow-delay="1s">
							<img src="assests/client/images/author-image.jpg"
								class="img-responsive" alt="">
							<figcaption>
								<h3>
									<i class="fa fa-h-square"></i>ealth Center
								</h3>
								<p>Well Educated and Experienced Doctors</p>
							</figcaption>
						</figure>
					</div>
				</div>

			</div>
		</div>
	</section>


	<!-- TEAM -->
	<section id="team" data-stellar-background-ratio="1">
		<div class="container">
			<div class="row">

				<%
				doctordao ddao = new doctordao();
				List<doctor> doctors = ddao.First3Doctor();

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