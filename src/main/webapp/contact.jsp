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
	<section id="contact">
		<div class="container"></div>
		</div>
	</section>


	<!-- ABOUT -->
	<section id="contact">
		<img src="assests/client/images/contact.png"
			class="img-responsive" alt="">
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