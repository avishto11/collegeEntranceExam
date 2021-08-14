<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Final Result View</title>
<style >body {
	font-family: 'Bookman Old Style';
	background: linear-gradient(to left, #66ffff 0%, #ff0066 100%);
}</style>
</head>
<body>
<jsp:include page="navbar_student.jsp"></jsp:include>

<br>

<%
Vector<String> vec = (Vector)request.getAttribute("Streams");
double average_received = (double)request.getAttribute("average_received");
String assessment_name = (String) request.getParameter("assessment_name");
%>
	<div class="container col-lg-6 ">
		<div class="card">
			<div class="card-header bg-info text-white">
				<fieldset>
					<legend class="text-center">Final Result </legend>

				</fieldset>
			</div>

			<div class="card-body">
				<form action="#" method="post">
					<fieldset>

						
						<div class="form-group">
							<label> Assessment</label> <input
								class="form-control needs-validation" type="number"
								autocomplete="off" value="<%=assessment_name %>" onchange="myMfiFunction()"
								placeholder="<%=assessment_name %>" name="Assesment_NO"
								id="Assesment_NO" readonly>
						</div>
						<br>
						<div class="form-group">
							<label>Average Recieved </label>
							<input  id="Assessment_Names" placeholder=" " value="<%=average_received %>" disabled>
						</div>
						<br>
						<div class="form-group">
							<label> Stream</label>
							<%for(String obj: vec){ %>
							 <input
								class="form-control needs-validation" type="text"
								 placeholder=" "
								name="Choose_Stream" required id="Choose_Stream" value="<%=obj %>" readonly>
								<%} %>
						</div>
						
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