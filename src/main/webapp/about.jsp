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
							<p>Aenean luctus lobortis tellus, vel ornare enim molestie
								condimentum. Curabitur lacinia nisi vitae velit volutpat
								venenatis.</p>
							<p>Sed a dignissim lacus. Quisque fermentum est non orci
								commodo, a luctus urna mattis. Ut placerat, diam a tempus
								vehicula.</p>
						</div>
						<figure class="profile wow fadeInUp" data-wow-delay="1s">
							<img src="assests/client/images/author-image.jpg"
								class="img-responsive" alt="">
							<figcaption>
								<h3>Dr. Neil Jackson</h3>
								<p>General Principal</p>
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
								<button type="button" class="btn btn-outline-primary">Give
									Feedback</button>
								<button class="btn btn-primary">Make appointment</button>

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