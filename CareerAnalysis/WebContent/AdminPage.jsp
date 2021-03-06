<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
<jsp:include page="cdn.jsp"></jsp:include>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
  body
   {
    font-family: 'Bookman Old Style';
    
    background: linear-gradient(to left, #66ffff 0%, #ff0066 100%);
   }
</style>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

<div class="container-fluid " style="margin-top:5px; float: left; ">
  <div class="row">
    <div style="width:10%">
      
    </div>
    <div style="width: 80%">
      <br>
     <div class="row">
    <div class="card col-sm-5" style="background: linear-gradient(to top right, #ffffcc 51%, #00ffff 100%);">
    <div class="card-body">
      <h4 class="card-title">Enter Questions</h4>
      <p class="card-text">Enter Questions for Assessment</p>
      <a href="AddQuestions.jsp" class="card-link"><b>Open Here</b></a>
    </div>
  </div>
  <div class="col-sm-1"></div>
  <br>
  <div class="card col-sm-5" style="background: linear-gradient(to bottom left, #ffffcc 51%, #00ffff 100%);">
    <div class="card-body">
      <h4 class="card-title">Create Assessment</h4>
      <p class="card-text">Create Assessments for Students</p>
      <a href="AssessmentCreation.jsp" class="card-link">Assessment Creations</a>
    </div>
  </div>
  </div>
  <br>
  <div class="row">
  <div class="card col-sm-5" style="background: linear-gradient(to top right, #ffffcc 51%, #00ffff 100%);">
    <div class="card-body">
      <h4 class="card-title">Create Stream</h4>
      <p class="card-text">Entry Streams for Assessment</p>
      <a href="CreateStream.jsp" class="card-link">Enter Streams</a>
    </div>
  </div>
<div class="col-sm-1"></div>
 <br>
  <div class="card col-sm-5" style="background: linear-gradient(to bottom left, #ffffcc 51%, #00ffff 100%);">
    <div class="card-body">
      <h4 class="card-title">College Details</h4>
      <p class="card-text">Enter College Details.</p>
      <a href="AddCollege.jsp" class="card-link">Enter College Details</a>
    </div>
  </div>
</div>
</div>
</div>
</div>
</body>
</html>