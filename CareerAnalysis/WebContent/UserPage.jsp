<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@page import="java.util.*"%>
	 <%@page import="com.careeranalysis.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home Page</title>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style >
  	
  	body
   {
    font-family: 'Bookman Old Style';
    
    background: linear-gradient(to left, #66ffff 0%, #ff0066 100%);
   }
   
  </style>
</head>
<body>
<jsp:include page="navbar_student.jsp"></jsp:include>
	<%
String user = (String)session.getAttribute("uname");
	if(user == null){
		response.sendRedirect("Login.jsp");
	}
%>
	
<br>
<br>

<div class="container" >
  <section class="row" style="margin-top:20px; ">
     <div class="col-sm-1"></div>
    <div class="col-sm-4 card" style="background-color: #ccffff">
      <br><br>
      <div class=" text-white text-center"  ><h3 style="color: #000"><b>Search Colleges </b></h3></div>
		
	<br>
	<div style="text-align: center;">
<form action="SearchCollege.jsp" method="get">
  <label for="cars"><h5 style="color: #ff0066">By Stream:</h5></label><br>
  <select name="stream" id="stream">
    <%
    Vector<String> vec2 = QuestionDao.getStreamName();
    for(String name: vec2){
    %>
   <option value="<%=name%>"><%=name %></option>
   <%} %>
  </select>
  <br><br><br><br><br><br><br><br>
  <button type="submit" class="btn btn-primary">Search</button>
</form></div>
<br>
    </div>   
    <div class="col-sm-1"></div>
     <div class="col-sm-1"></div>
    <div class="col-sm-4 card" style="background-color: #ccffff">
      <br><br>
      <div class=" text-white text-center"  ><h3 style="color: #000"><b>Career Analisis</b></h3></div>
		
	<br>
	<div style="text-align: center;">
<form action="AssessmentTest.jsp" method="get">
  <label for="cars"><h5 style="color: #ff0066">Choose Assesment:</h5></label><br>
  <select name="assessment_name" id="assessment_name">
   <%Vector<String> vec = QuestionDao.getAssessmentName();
   for(String str:vec){
   %>
    <option value="<%=str%>"><%=str %></option>
   <%} %>
  </select>
  <br><br><br><br><br><br><br><br>
  <button type="submit" class="btn btn-primary">Start Test</button>
</form></div>
<br>
    </div>   <br><br>
    
</section></div>
<jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>