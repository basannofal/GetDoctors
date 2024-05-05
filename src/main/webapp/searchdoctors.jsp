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

<!-- Add jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Custom JavaScript code -->
<script>
	$(document).ready(
			function() {
				// Check if the search query parameter exists
				var queryParam = new URLSearchParams(window.location.search)
						.get('query');
				if (!queryParam) {
					// If no query parameter, trigger search to fetch all doctors
					$('#searchInput').trigger('submit');
				}
			});
</script>

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

		<%
		String query = request.getParameter("query");
		String ptid = request.getParameter("ptid");
		%>

		

	<!-- TEAM -->
	<section id="team" data-stellar-background-ratio="1">
		<div class="container">
			<div class="row">

				<div class="col-md-12 col-sm-12"
					style="display: flex; justify-content: space-between; align-items: center;">
					<div class="about-info">
						<h2 class="wow fadeInUp" data-wow-delay="0.1s">Searched Doctors (<%=query %>)</h2>
					</div>
					<div>
						<form class="form-inline" action="searchDoctors" method="post">
							<input class="form-control mr-sm-2" type="search" name="query"
								placeholder="Find Doctor Name, Specialization"
								aria-label="Search" id="searchInput">
							<button class="btn btn-outline-success my-2 my-sm-0"
								type="submit">Find</button>
						</form>
					</div>
				</div>

				<div class="clearfix"></div>



				<%
				List<doctor> doctors = (List<doctor>) request.getAttribute("doctors");
				if (doctors != null && !doctors.isEmpty()) {
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
									href="feedback.jsp?drid=<%=dr.getDoctor_id()%>&drname=<%=dr.getFname()%>">
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
				} else {
				%>
				<!-- No doctors found message -->
				<p>No doctors found.</p>

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