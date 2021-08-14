<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<jsp:include page="cdn.jsp"></jsp:include>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>

<body class="container-fluid">
<jsp:include page="welcome.jsp"></jsp:include> 

<br><div  class="text-center">
<h2>Admin Log in Here</h2>
<br>

</div>



<div class="container col-lg-6 border">
	<div class="card">
	<div class="card-header bg-info text-white">
	<fieldset>
	 <legend class="text-center">Admin Login</legend>
		    <h3 class="text-danger"><%if(request.getAttribute("error_msg")!=null){out.println(request.getAttribute("error_msg"));} %></h3>
		</fieldset>
		</div>
		
		<div class="card-body">
	<form action="LoginServ" method="post">
		<fieldset>
		   
			<div class="form-group">
				<label>Email </label>
				<input class="form-control needs-validation" type="email" placeholder="Enter your Email" name="email" id="email_id" required>
			</div>
			<div class="form-group">
			<label>Password</label>
			<input class="form-control needs-validation" type="password" autocomplete="off" placeholder="Enter a password" name="password" required>
			</div>
			<input type="submit" class="btn btn-primary my-3 float-right" value="Submit" id="subbtn">
		 </fieldset>
	</form>
	</div>
	</div>
</div>	
<div  class="text-center"><br>
<h3 style = "color: red">Or</h3>
<br>
<h4>For Student Login <a href="Login.jsp">Click Here.....</a></h4>
</div>

<script> 
  </script>



<!-- Footer -->
	<br>
<jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>