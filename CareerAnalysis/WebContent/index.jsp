<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INDEX</title>
<jsp:include page="cdn.jsp"></jsp:include>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page="welcome.jsp"></jsp:include> 
	<div class="container col-lg-6 border">
	<div class="card">
		<div class="card-header bg-info text-white text-center"><h3><b>Register</b></h3>
		<h3 class="text-danger"><%if(request.getAttribute("error_msg")!=null){out.println(request.getAttribute("error_msg"));} %></h3>
		</div>
		<div class="card-body">
			<form action="RegisterServ" method="post">
				<div class="form-group">
					<label for="email">Email address:</label> <input type="email"
						class="form-control" placeholder="Enter email" name="email"
						id="email">
				</div>
				<div class="form-group">
					<label for="email">Student Name</label> <input type="text"
						class="form-control" placeholder="Enter name" name="name"
						id="name">
				</div>
				<div class="form-group">
					<label for="pwd">Password:</label> <input type="password"
						class="form-control" placeholder="Enter password" name="password"
						id="pwd">
				</div>
				<div class="form-group">
					<label for="pwd">Number:</label> <input type="text"
						class="form-control" placeholder="Enter Phone Number" name="number"
						id="number">
				</div>
				<div class="form-group">
					<label for="pwd">Address:</label> <input type="text"
						class="form-control" placeholder="Enter Address" name="address"
						id="address">
				</div>
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
	<div class="card-footer">
		Already Registered?Go to <a href="Login.jsp">Login Page</a>
	</div></div>
	
	<br>
	
	<jsp:include page="footer.jsp"></jsp:include> 
	</div>
</body>
</html>