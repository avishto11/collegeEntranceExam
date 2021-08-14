<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Questions</title>
<jsp:include page="cdn.jsp"></jsp:include>
<link rel="stylesheet" href="/CareerAnalysis/WebContent/css/arka1.css" type="text/css">

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.arka{ list-style-type: none;
  background-color: rgb(36, 173, 174);
  font-family:"Segoe UI" ,Arial ,sans-serif;
}

li a:hover:not(.active) {
  background-color: #fff;
}

 body
   {
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
					style="color: #000;"><i class="fa fa-fw fa-home"></i><h6><b>Admin
						Home-Page</b></h6></a></li>

				<li class="nav-item"><a class="nav-link" href="AdminPage.jsp"
					style="color: #000;"><i class="fa fa-cogs"></i><h6><b>Admin Settings</b></h6></a></li>

				<li class="nav-item"><a class="nav-link" href="about_us.jsp"
					style="color: #000;"><i class="fa fa-address-book-o"></i><h6><b>About Us</b></h6></a></li>
					
				<li class="nav-item">
					<form class="Logout" style="float:right">
						<input type="submit" value="Logout">
					</form>
				</li>
			</ul>
		</div>
	</nav>
		<div class="container-fluid"  >
		<br><br><h3  id="Tut"style="background-color: #fff; color:#660066; text-align: center; "><strong>Add Questions</strong>
			<h3 class="text-danger">
				<%
					if (request.getAttribute("error_msg") != null) {
						out.println(request.getAttribute("error_msg"));
					}
				%>
			</h3>
<form action="AddQuestionServ" method="post">
<div class="form-group" >
	<section class="row" style="margin-top:20px;margin-left: 5%; ">
<div class= "col-sm-3"></div>
	<div class="card col-sm-6" style="text-align: center;"><br>
		<label for="email"><h4>Enter Question Text Here</h4></label>
	
			<div class="card-body" style="background-color: #b3ffcc">
					<textarea name="q_text" rows="10" cols="50" > </textarea>
			</div>
	</div>
	<div class= "col-sm-3"></div>
	</div></section>
	
	
	<div style="background-color: #fff"><br></div>
	<!-- End of question -->
	<section class="row" style="margin-top:20px;margin-left: 5%;text-align: center; ">
	<div class='col-sm-12 '>

          <div class="card col-sm-4 yytt" style="background-color: white ;text-align: center;">
              <label for="email"><h4>Option A text</h4> </label>
              <div class= "card-body">
              
              <textarea class="form-control" rows="4" name="q_op_a" ></textarea>
              </div>
              
          </div>

          <div class="card col-sm-4 yytt" style="background-color: white ;text-align: center;">
              <label for="pwd"><h4>Option B text</h4> </label>
              <div class= "card-body">
              
              <textarea class="form-control" rows="4" name="q_op_b" ></textarea>
              </div>
              
          </div>
          </div>
          <br>

           <div class='col-sm-12 '>

          <div class="card col-sm-4 yytt" style="background-color: white ;text-align: center;">
              <label for="email"><h4>Option C text</h4> </label>
              <div class= "card-body">
              
              <textarea class="form-control" rows="4" name="q_op_c" ></textarea>
              </div>
              
          </div>

          <div class="card col-sm-4 yytt" style="background-color: white ;text-align: center;">
              <label for="pwd"><h4>Option D text</h4> </label>
              <div class= "card-body">
              
              <textarea class="form-control" rows="4" name="q_op_d" ></textarea>
              </div>
              
          </div>
          </div>
</section>
<div style="background-color: rgb(255, 255, 255)"><br></div>
	<!-- Arka -->
<!-- 				<div class="form-group">
					<label for="email">Option A text</label>
					<textarea name="q_op_a" rows="10" cols="80">Enter Question Option A</textarea>
				</div>
				<div class="form-group">
					<label for="pwd">Option B text</label>
					<textarea name="q_op_b" rows="10" cols="80">Enter Question Option B</textarea>
				</div>
				<div class="form-group">
					<label for="pwd">Option C text</label>
					<textarea name="q_op_c" rows="10" cols="80">Enter Question Option C</textarea>
				</div>
				<div class="form-group">
					<label for="pwd">Option D text</label>
					<textarea name="q_op_d" rows="10" cols="80">Enter Question Option D</textarea>
				</div>
				
				
				 -->
<section class="row" style="margin-top:20px;margin-left: 5%; ">
<div class= "col-sm-3"></div>
				 <div class= "card col-sm-6" ><br>
				<div class="form-group">
					<h6><label for="pwd"><h6>Enter Option A Weight</h6></label></h6>
					 <input type="number"
						class="form-control" placeholder="Enter Option A Weight"
						name="q_op_a_weight" id="address">
				</div>
				<div class="form-group">
					<h6><label for="pwd"><h6>Enter Option B Weight</h6></label> </h6>
					<input type="number"
						class="form-control" placeholder="Enter Option B Weight"
						name="q_op_b_weight" id="address">
				</div>
				<div class="form-group">
					<h6><label for="pwd"><h6>Enter Option C Weight</h6></label></h6>
					 <input type="number"
						class="form-control" placeholder="Enter Option C Weight"
						name="q_op_c_weight" id="address">
				</div>
				<div class="form-group">
				
					<label for="pwd"><h6>Enter Option D Weight</h6></lebel>
					 <input type="number"
						class="form-control" placeholder="Enter Option D Weight"
						name="q_op_d_weight" id="address">
				</div>
				<div class="form-group">
					<label for="pwd"><h6>Enter Question Keyword</h6></label>
					 <input type="text"
						class="form-control" placeholder="Enter Question Keyword"
						name="q_keyword" id="address">
				</div>
				<br>
				<button type="submit" class="btn btn-primary my-3 float-right"><strong>Submit</strong></button>
				<br>
		</form>
		</div></div>
		<div class= "col-sm-3"></div>
		
		
</section>
	</div>
	<br>
	<!-- Footer -->
	<div style="background-color: rgb(255, 255, 255)"><br></div>
	<div style="background-color: rgb(255, 255, 255)"><br><br></div>
	
<jsp:include page="footer.jsp"></jsp:include> 
	</div>
	</body></html>


	




<!-- D:\Arka Important\javaa\CN\trunk\CareerAnalysis\WebContent\includes\css -->
