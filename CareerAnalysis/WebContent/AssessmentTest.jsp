<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*"%>
<%@page import="com.careeranalysis.properties.*"%>
<%@page import="com.careeranalysis.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	<br><br>
<section class="row" style=" ">
     <div class="col-sm-4"></div>
    <div class="col-sm-4 card" style="text-align: left;margin-top:20px; background-color: #ccffff">
      <br>
<form action="AssessmentTest" method="get">
<%
String assessment_name = request.getParameter("assessment_name");
Vector<MCQ> vec = QuestionDao.getallAssessments(assessment_name);
int i = 1;int length = vec.size();
%>
<input type="hidden" name="assessment_name" value="<%=assessment_name%>">
<input type="hidden" name="size" value="<%=length%>">
<%
for(MCQ obj : vec){
%>
<div>
<p><%=i %>.<%=obj.getQuestion_text() %></p>
</div>
<input type="hidden" name="question_text" value="<%=obj.getQuestion_text()%>">
<div class="form-group"><br>
	<input type="radio" name = "option_a_<%=+i %>" value="<%=obj.getOption_a_weight()%>"><br>
	<label><%=obj.getOption_a() %></label>
</div>
<div class="form-group">
	<input type="radio"  name = "option_a_<%=+i %>" value="<%=obj.getOption_b_weight()%>"><br>
	<label><%=obj.getOption_b() %></label><br>
	
</div> 

<div class="form-group">
	<input type="radio" name = "option_a_<%=+i %>" value="<%=obj.getOption_c_weight()%>"><br>
	<label><%=obj.getOption_c() %></label><br>
	
</div> 

<div class="form-group">
	<input type="radio" name = "option_a_<%=+i %>" value="<%=obj.getOption_d_weight()%>"><br>
	<label><%=obj.getOption_d() %></label><br>
	
</div> 
<input type="hidden" name="assessment_id" value="<%=obj.assement_id%>">
 <div style="background-color: #808080"><br></div><br>
<% i++;
} %>

 
  <br>
  <button type="submit" class="btn btn-success">Submit</button>

</form>

</div>
<br><br>
</section>
<jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>