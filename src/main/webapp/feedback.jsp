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
					<!-- CONTACT FORM HERE -->
					<form id="appointment-form" role="form" method="post"
						action="feedback">

						<!-- SECTION TITLE -->
						<div class="section-title wow fadeInUp" data-wow-delay="0.4s">
							<h2>
								Give Feedback To
								<%=drname%></h2>
						</div>

						<div class="wow fadeInUp" data-wow-delay="0.8s">


							<input type="hidden" class="form-control" id="drid" name="drid"
								value="<%=drid%>"> <input type="hidden"
								class="form-control" id="ptid" name="ptid" value="<%=ptid%>">



							<div class="col-md-6 col-sm-6">
								<label for="date">Select Date</label> <input type="date"
									name="date" value="" class="form-control">
							</div>
							<div class="col-md-6 col-sm-6">
								<label for="time">Select Time</label> <input type="datetime-local"
									name="time" value="" class="form-control">
							</div>
							<div class="col-md-12 col-sm-12">
								<label for="Message">Rating</label> <input type="range"
									name="rating" min="0" max="10" class="form-control"
									id="ratingRange" value="5">
								<p id="ratingValue"></p>

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


				<div class="col-md-6 col-sm-6">
					<img src="assests/client/images/img/7.png"
						class="img-responsive" alt="">
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

	<script type="text/javascript">
		// Get the range input and the element to display the rating
		var rangeInput = document.getElementById('ratingRange');
		var ratingDisplay = document.getElementById('ratingValue');

		// Add an event listener to the range input
		rangeInput.addEventListener('input', function() {
			// Update the value displayed
			ratingDisplay.textContent = 'Selected rating: ' + rangeInput.value;
		});
	</script>

</body>
</html>