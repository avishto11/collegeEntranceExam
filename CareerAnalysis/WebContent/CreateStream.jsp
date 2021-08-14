<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Stream</title>
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
<script src="JS/CreateStream.js"></script>

<style>
body {
	font-family: 'Bookman Old Style';
	background: linear-gradient(to left, #66ffff 0%, #ff0066 100%);
}
</style>

</head>


<body class="container-fluid">

	<jsp:include page="navbar.jsp"></jsp:include>

	<br>


	<div class="container col-lg-6 ">
		<div class="card">
			<div class="card-header bg-info text-white">
				<fieldset>
					<legend class="text-center">Create Stream </legend>

				</fieldset>
			</div>

			<div class="card-body">
				<form action="#" method="post">
					<fieldset>

						<div class="form-group">
							<label>Level </label> <select name="level" id="level">
								<option value="10+2">10+2</option>
								<option value="UG">Ug</option>
								<option value="PG">PG</option>
							</select>
						</div>
						<div class="form-group">
							<label>No. of Assesments</label> <input
								class="form-control needs-validation" type="number"
								autocomplete="off" onchange="myMfiFunction()"
								placeholder="Enter a No. of Assessments" name="Assesment_NO"
								id="Assesment_NO" required>
						</div>
						<br>
						<div class="form-group">
							<label>Assesments</label>
							<div id="Assessment_Names"></div>
						</div>
						<br>
						<div class="form-group">
							<label>Choose Stream</label> <input
								class="form-control needs-validation" type="text"
								 placeholder="Enter Stream"
								name="Choose_Stream" required id="Choose_Stream">
						</div>
						<input type="submit" class="btn btn-primary my-3 " value="Submit"
							id="submit-btn">
					</fieldset>
				</form>
			</div>
		</div>
	</div>




	<!-- Footer -->
	<br>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>