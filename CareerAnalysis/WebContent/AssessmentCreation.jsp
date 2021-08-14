<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> 
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD_ASSESMENT</title>
<jsp:include page="cdn.jsp"></jsp:include>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="JS/AssessmentCreation.js"></script>
  <style >
  	
  	body
   {
    font-family: 'Bookman Old Style';
    
    background: linear-gradient(to left, #66ffff 0%, #ff0066 100%);
   }
   
  </style>
</head>

<body>
	<jsp:include page="navbar.jsp"></jsp:include><br> 
	<div class="container col-lg-6 border">
	<div class="card">
		<div class="card-header bg-info text-white text-center"><h3><b>ADD NEW ASSESMENT</b></h3>
		<h3 class="text-danger"><!--<%if(request.getAttribute("error_msg")!=null){out.println(request.getAttribute("error_msg"));} %>-->

		</h3>
		</div>
		<div class="card-body">
			<form action="" >
				
				<div class="form-group">
					<label for="Name"> Name</label> <input type="text"
						class="form-control" placeholder="Enter name of the assesment" name="Assesment_name"
						id="Assesment_name">
				</div>
				<div class="form-group">
					<label for="pwd">Keyword 1:</label> <input type="text"
						class="form-control" placeholder="Enter Keyword 1" name="Keyword_1"
						id="Keyword_1">
				</div>
				<div class="form-group">
					<label for="pwd">Keyword 2:</label> <input type="text"
						class="form-control" placeholder="Enter Keyword 2" name="Keyword_2"
						id="Keyword_2">
				</div>
				<div class="form-group">
					<label for="pwd">Keyword 3:</label> <input type="text"
						class="form-control" placeholder="Enter Keyword 3" name="Keyword_3"
						id="Keyword_3">
				</div>

				<div class="form-group">
					<label for="pwd">Number of Questions</label> <input type="number"
						class="form-control" onchange="myMfiFunction()" placeholder="Enter Question Id " name="q_id_string"
						id="q_id_string">
				</div>
					<div class="form-group">
					<label for="pwd">Questions</label> 
					<div id="question_bank"></div>
				</div>
		</div>
		<button type="btn" id="submit-btn" class="btn btn-primary">Submit</button>
		</form>
	</div>
	
	
	<br>
	
	 

	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>