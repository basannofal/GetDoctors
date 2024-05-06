<%@page import="com.getDoctors.model.disease"%>
<%@page import="com.getDoctors.dao.diseasedao"%>
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

	<%
	String drname = request.getParameter("drname");
	String drid = request.getParameter("drid");
	String ptid = request.getParameter("ptid");
	%>

	<!-- MAKE AN APPOINTMENT -->
	<section id="appointment" data-stellar-background-ratio="3">
		<div class="container">
			<div class="row">

				<div class="col-md-6 col-sm-6">
					<img src="assests/client/images/img/14.png"
						class="img-responsive" alt="">
				</div>

				<div class="col-md-6 col-sm-6">
					<!-- CONTACT FORM HERE -->
					<form id="appointment-form" role="form" method="post" action="appointment">

						<!-- SECTION TITLE -->
						<div class="section-title wow fadeInUp" data-wow-delay="0.4s">
							<h2>
								Make an appointment with
								<%=drname%></h2>
						</div>

						<div class="wow fadeInUp" data-wow-delay="0.8s">


							<input type="hidden" class="form-control" id="drid" name="drid"
								value="<%=drid%>">
								
							<input type="hidden" class="form-control" id="ptid" name="ptid"
								value="<%=ptid%>">


							<div class="col-md-6 col-sm-6">
								<label for="name">Name</label> <input type="text"
									class="form-control" id="name" name="name"
									placeholder="Full Name">
							</div>

							<div class="col-md-6 col-sm-6">
								<label for="email">Email</label> <input type="email"
									class="form-control" id="email" name="email"
									placeholder="Your Email">
							</div>

							<div class="col-md-6 col-sm-6">
								<label for="date">Select Date</label> <input type="date"
									name="date" value="" class="form-control">
							</div>
							<div class="col-md-6 col-sm-6">
								<label for="time">Select Time</label> <input type="time"
									name="time" value="" class="form-control">
							</div>

							<div class="col-md-12 col-sm-12">
								<label for="select">Select Disease</label> <select
									class="form-control" name="disease">
									<%
									diseasedao ddao = new diseasedao();
									List<disease> diseases = ddao.AllDisease();

									for (disease dr : diseases) {
									%>
									<option value="<%= dr.getDisease_id()%>"><%= dr.getDisease_name() %></option>
									<%
									}
									%>

								</select>
							</div>

							<div class="col-md-12 col-sm-12">
								<label for="Message">Additional Message</label>
								<textarea class="form-control" rows="5" id="message"
									name="message" placeholder="Message"></textarea>
								<button type="submit" class="form-control" id="cf-submit"
									name="submit">Submit Button</button>
							</div>
						</div>
					</form>
				</div>

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