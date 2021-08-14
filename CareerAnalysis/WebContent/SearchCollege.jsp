<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@page import="java.util.*"%>
	 <%@page import="com.careeranalysis.dao.*"%>
	 <%@page import="com.careeranalysis.properties.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Colleges</title>

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
<br>
<%
String stream = request.getParameter("stream");
Vector<CollegeDetails> vec = UserDao.getCollegeDetails(stream);
%>
<div class="container" >
  <section class="row" style=" ">
     <div class="col-sm-2"></div>
    <div class="col-sm-8 card" style="margin-top:20px; background-color: #ccffff">
      <br><br>
      <div class=" text-white text-center"  ><h3 style="color: #000"><b> College Details </b></h3></div>
		
	<br>
	<%
	int cnt = 1;
	for(CollegeDetails obj: vec){

	%>
	<div style="text-align: left;">

  <%=cnt %><label for="cars"><h5 style="color: #ff0066">College Name:<%=obj.getInstitute_name() %></h5></label><br>
  <label for="cars"><h5 style="color: #ff0066">College Locality:<%=obj.getLocality() %></h5></label><br>
  <label for="cars"><h5 style="color: #ff0066">College Courses:<%=obj.getCourse() %></h5></label><br>
  <label for="cars"><h5 style="color: #ff0066">Stream:<%=stream %></h5></label><br>
  <label for="cars"><h5 style="color: #ff0066">Village/City:<%=obj.getVillage() %></h5></label><br>
  <label for="cars"><h5 style="color: #ff0066">District:<%=obj.getDistrict() %></h5></label><br>
  <br><br><br><br>
  <!--
  <button type="submit" class="btn btn-primary">Search</button>
-->
</div>
<%cnt = cnt +1;
} %>
<br>
    </div><div class="col-sm-2"></div>   
      <br><br>
</section>
</div>
<jsp:include page="footer.jsp"></jsp:include> 
</body><br><br>
</html>