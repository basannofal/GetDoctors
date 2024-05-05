
<!-- HEADER -->
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
<header>
	<div class="container">
		<div class="row">

			<div class="col-md-4 col-sm-5">
				<p>Welcome to a Professional Health Care</p>
			</div>

			<div class="col-md-8 col-sm-7 text-align-right">
				<span class="phone-icon"><i class="fa fa-phone"></i>
					010-060-0160</span> <span class="email-icon"><i
					class="fa fa-envelope-o"></i> <a href="#">info@company.com</a></span>
			</div>

		</div>
	</div>
</header>


<!-- MENU -->
<section class="navbar navbar-default navbar-static-top"
	role="navigation">
	<div class="container">

		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="icon icon-bar"></span> <span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>

			<!-- lOGO TEXT HERE -->
			<a href="index.jsp" class="navbar-brand"><i
				class="fa fa-h-square"></i>ealth Center</a>
		</div>

		<!-- MENU LINKS -->
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">

				<%
				if (isLoggedIn && userid == 3) {
				%>
				<li><a href="index.jsp" class="smoothScroll">Home</a></li>
				<li><a href="about.jsp" class="smoothScroll">About Us</a></li>
				<li><a href="doctors.jsp?ptid=<%=userid%>"
					class="smoothScroll">Doctors</a></li>
				<li><a href="#google-map" class="smoothScroll">Contact</a></li>

				<li class="appointment-btn"><a href="views/patientPanel/patientdashboard.jsp?ptid=<%=userid%>">Visit
						Panel</a></li>

				<li class="appointment-btn"><a href="adminlogout">logout</a></li>
				<%
				} else {
				%>
				<li><a href="index.jsp" class="smoothScroll">Home</a></li>
				<li><a href="about.jsp" class="smoothScroll">About Us</a></li>
				<li><a href="doctors.jsp" class="smoothScroll">Doctors</a></li>
				<li><a href="#google-map" class="smoothScroll">Contact</a></li>

				<li class="appointment-btn"><a href="login.jsp">Login</a></li>
				<%
				}
				%>

			</ul>
		</div>

	</div>
</section>
