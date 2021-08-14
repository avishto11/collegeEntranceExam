<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add College</title>
<jsp:include page="cdn.jsp"></jsp:include>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.arka {
	list-style-type: none;
	background-color: rgb(36, 173, 174);
	font-family: "Segoe UI", Arial, sans-serif;
}

li a:hover:not (.active ) {
	background-color: #fff;
}

body {
	font-family: 'Bookman Old Style';
	background: linear-gradient(to left, #66ffff 0%, #ff0066 100%);
}

.yytt {
	max-height: 400px;
	padding-top: 10px;
	display: inline-block;
	border-radius: 30px;
	position: relative;
	margin-right: 25px;
	margin-bottom: 15px;
}
</style>
</head>
<body>
	<!-- Arka New navbar -->

	<nav class="navbar navbar-expand-sm navbar-dark arka">

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapse_Navbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapse_Navbar">
			<ul class="navbar-nav">
				<li class="nav-item "><a class="nav-link" href="AdminPage.jsp"
					style="color: #000;"><i class="fa fa-fw fa-home"></i>
					<h6>
							<b>Admin Home-Page</b>
						</h6></a></li>

				<li class="nav-item"><a class="nav-link" href="AdminPage.jsp"
					style="color: #000;"><i class="fa fa-cogs"></i>
					<h6>
							<b>Admin Settings</b>
						</h6></a></li>

				<li class="nav-item"><a class="nav-link" href="about_us.jsp"
					style="color: #000;"><i class="fa fa-address-book-o"></i>
					<h6>
							<b>About Us</b>
						</h6></a></li>

				<li class="nav-item">
					<form class="Logout" style="float: right">
						<input type="submit" value="Logout">
					</form>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid">
		<br>
		<br>
		<h3 class="text-danger" id="Tut"
			style="background-color: skyblue; text-align: center;">
			<strong>Add College/University Details</strong>
		</h3>
		<form action="AddCollege" method="get">
			<section class="row" style="margin-top: 20px; margin-left: 5%;">
				<div class="col-sm-3"></div>
				<div class="card col-sm-6">
					<br>
					<div class="form-group">
						<h6>
							<label for="pwd"><h6>Select one</h6></label>
						</h6>
						<input type="radio" id="HS" name="level" value="HS"> <label
							for="male">10+2</label> <input type="radio" id="UG" name="level"
							value="UG"> <label for="female">UG</lebel> <input
							type="radio" id="PG" name="level" value="PG"> <label
							for="other">PG</label>
					</div>


					<div class="form-group">
						<h6>
							<label for="pwd"><h6>Institute Type</h6></label>
						</h6>
						<input type="radio" id="School" name="type" value="school">
						<label for="male">School</label> <input type="radio" id="female"
							name="type" value="college"> <label for="female">College</lebel>
							<input type="radio" id="other" name="type" value="university">
							<label for="other">University</label>
					</div>

					<div class="form-group">
						<h6>
							<label for="pwd"><h6>Institute Name</h6></label>
						</h6>
						<input type="text" class="form-control" placeholder=" "
							name="institute_name" id="address">
					</div>
					<div class="form-group">
						<h6>
							<label for="pwd"><h6>Select Your Course</h6></label>
						</h6>
						<input type="text" class="form-control" placeholder=" "
							name="course" id="address">
					</div>
					<div class="form-group">
						<h6>
							<label for="pwd"><h6>Stream</h6></label>
						</h6>
						<input type="text" class="form-control" placeholder=" "
							name="Stream" id="stream">
					</div>
					<h3>Address</h3>
					<div class="form-group">
						<h6>
							<label for="pwd"><h6>Locality/Road Name/Building
									Name</h6></label>
						</h6>
						<input type="text" class="form-control" placeholder=" "
							name="locality" id="address">
					</div>
					<div class="form-group">

						<label for="pwd"><h6>City/Village/Town Name</h6>
							</lebel> <input type="text" class="form-control" placeholder=""
							name="village" id="address">
					</div>
					<div class="form-group">
						<label for="pwd"><h6>District</h6></label> <input type="text"
							class="form-control" placeholder=" " name="district" id="address">
					</div>
					<div class="form-group">
						<label for="pwd"><h6>State</h6></label> <input type="text"
							class="form-control" placeholder=" " name="state" id="address">
					</div>
					<div class="form-group">
						<label for="pwd"><h6>Pin</h6></label> <input type="number"
							class="form-control" placeholder=" " name="pin" id="address">
					</div>


					<br>
					<button type="submit" class="btn btn-warning">
						<strong>Submit</strong>
					</button>
					<br>
		</form>
	</div>
	</div>
	<div class="col-sm-3"></div>


	</section>
	</div>
	<!-- Footer -->
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>



</body>

<!-- D:\Arka Important\javaa\CN\trunk\CareerAnalysis\WebContent\includes\css -->
</html>