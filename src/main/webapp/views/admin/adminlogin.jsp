<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="../../assests/css/adminlogin.css">

</head>
<body style="background-color: rgb(170, 202, 202);">
	<section>
		<div class="row">
			<div class="col-lg-3 mx-auto form">
				<form action="../../adminlogin" method="post">
					<div style="margin: 20px 0;">
						<h1>Login form</h1>
					</div>
					<div class="form-group">
						<label for="formGroupExampleInput">username</label> <input
							type="text" class="form-control" name="username" id="username"
							placeholder="username">
					</div>

					<div class="form-group">
						<label for="formGroupExampleInput2">password </label> <input
							type="password" class="form-control" name="pass" id="pass"
							placeholder="password">
					</div>
					<br>
					<div>
						<input type="submit" class="btn btn-primary" value="Log in">
					</div>
					<br>


				</form>

			</div>
		</div>
	</section>

	<!-- Optional JavaScript -->
</body>
</html>