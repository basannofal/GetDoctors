<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="assests/css/login.css">
</head>
<body>
	<div class="container register">
		<div class="row">
			<div class="col-md-3 register-left">
				<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
				<h3>Welcome</h3>
				<p>WellCome back our valueble User!</p>
				<a href="<%=request.getContextPath()%>/registration.jsp"> <input
					type="submit" name="" value="Registration" />
				</a> <br />
			</div>

			<div class="col-md-9 register-right">
				<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="home-tab"
						data-toggle="tab" href="#home" role="tab" aria-controls="home"
						aria-selected="true">Patient</a></li>
					<li class="nav-item"><a class="nav-link" id="profile-tab"
						data-toggle="tab" href="#profile" role="tab"
						aria-controls="profile" aria-selected="false">Doctor</a></li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<h3 class="register-heading">login as a Patient</h3>
						<form action="patientlogin" method="post">

							<div class="row register-form">
								<div class="col-md-12">
									<div class="form-group">
										<input type="email" class="form-control"
											placeholder="Your Email *" value="" name="email" />
									</div>

									<div class="form-group">
										<input type="password" class="form-control"
											placeholder="Password *" value="" name="pass" />
									</div>
									<input type="submit" class="btnRegister" value="login" />
								</div>
								<%
								String pterrorMsg = (String) request.getAttribute("pterrorMsg");
								if (pterrorMsg != null && !pterrorMsg.isEmpty()) {
								%>
								<div class="alert alert-danger" role="alert">
									<%=pterrorMsg%>
								</div>
								<%
								}
								%>
							</div>
						</form>

					</div>
					<div class="tab-pane fade show" id="profile" role="tabpanel"
						aria-labelledby="profile-tab">
						<h3 class="register-heading">Login as a Doctor</h3>
						<form action="doctorlogin" method="post">

							<div class="row register-form">

								<div class="col-md-12">
									<div class="form-group">
										<input type="email" class="form-control"
											placeholder="Your Email *" value="" name="email" />
									</div>

									<div class="form-group">
										<input type="password" class="form-control"
											placeholder="Password *" value="" name="pass" />
									</div>
									<input type="submit" class="btnRegister" value="login" />
								</div>
								<%
								String errorMsg = (String) request.getAttribute("errorMsg");
								System.out.print(errorMsg);
								if (errorMsg != null && !errorMsg.isEmpty()) {
								%>
								<div class="alert alert-danger" role="alert">
									<%=errorMsg%>
								</div>
								<%
								}
								%>
							</div>
						</form>

					</div>
				</div>
			</div>

		</div>

	</div>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>