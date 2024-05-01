<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
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
				<p>You are 30 seconds away from earning your own money!</p>
				<input type="submit" name="" value="Login" /><br />
			</div>
			<div class="col-md-9 register-right">
				<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="home-tab"
						data-toggle="tab" href="#home" role="tab" aria-controls="home"
						aria-selected="true">Employee</a></li>
					<li class="nav-item"><a class="nav-link" id="profile-tab"
						data-toggle="tab" href="#profile" role="tab"
						aria-controls="profile" aria-selected="false">Hirer</a></li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<h3 class="register-heading">Apply as a Employee</h3>
						<div class="row register-form">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="First Name *" value="" />
								</div>
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Last Name *" value="" />
								</div>
								<div class="form-group">
									<input type="password" class="form-control"
										placeholder="Password *" value="" />
								</div>
								<div class="form-group">
									<input type="password" class="form-control"
										placeholder="Confirm Password *" value="" />
								</div>
								<div class="form-group">
									<div class="maxl">
										<label class="radio inline"> <input type="radio"
											name="gender" value="male" checked> <span>
												Male </span>
										</label> <label class="radio inline"> <input type="radio"
											name="gender" value="female"> <span>Female </span>
										</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="email" class="form-control"
										placeholder="Your Email *" value="" />
								</div>
								<div class="form-group">
									<input type="text" minlength="10" maxlength="10"
										name="txtEmpPhone" class="form-control"
										placeholder="Your Phone *" value="" />
								</div>
								<div class="form-group">
									<select class="form-control">
										<option class="hidden" selected disabled>Please
											select your Sequrity Question</option>
										<option>What is your Birthdate?</option>
										<option>What is Your old Phone Number</option>
										<option>What is your Pet Name?</option>
									</select>
								</div>
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Enter Your Answer *" value="" />
								</div>
								<input type="submit" class="btnRegister" value="Register" />
							</div>
						</div>
					</div>
					<div class="tab-pane fade show" id="profile" role="tabpanel"
						aria-labelledby="profile-tab">
						<h3 class="register-heading">Apply as a Hirer</h3>
						<div class="row register-form">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="First Name *" value="" />
								</div>
								<div class="form-group">
									<input type="text" class="form-control"
										placeholder="Last Name *" value="" />
								</div>
								<div class="form-group">
									<input type="email" class="form-control" placeholder="Email *"
										value="" />
								</div>
								<div class="form-group">
									<input type="text" maxlength="10" minlength="10"
										class="form-control" placeholder="Phone *" value="" />
								</div>


							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="password" class="form-control"
										placeholder="Password *" value="" />
								</div>
								<div class="form-group">
									<input type="password" class="form-control"
										placeholder="Confirm Password *" value="" />
								</div>
								<div class="form-group">
									<select class="form-control">
										<option class="hidden" selected disabled>Please
											select your Sequrity Question</option>
										<option>What is your Birthdate?</option>
										<option>What is Your old Phone Number</option>
										<option>What is your Pet Name?</option>
									</select>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" placeholder="`Answer *"
										value="" />
								</div>
								<input type="submit" class="btnRegister" value="Register" />
							</div>
						</div>
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