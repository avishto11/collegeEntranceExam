<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<style >body {
	font-family: "monospace";
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
<jsp:include page="navbar_student.jsp"></jsp:include>

<br>


	<div class="container col-lg-6 ">
		<div class="card" style = 'border-radius: 50px;'>
			<div class="card-header bg-info text-white" style = 'border-radius: 50px;'>
				<fieldset>
					<legend class="text-center">About US </legend>

				</fieldset>
			</div>
</div></div><br><br>

<div class="container col-lg-4 ">
		<div class="card" style = 'border-radius: 30px;'>
			<div class="card-header text-danger" style = 'background: linear-gradient(to top left, #ffff00 40%, #00ffcc 58%); border-radius: 30px;'>
				<fieldset>
					<legend class="text-center" ><b>Developed By</b> </legend>

				</fieldset>
			</div>
</div></div><br>

	<section class="row" style="margin-top:20px;margin-left: 5%;text-align: center; ">
	
	<div class='col-sm-12 '>
	

          <div class="card col-sm-4 yytt" style="background: linear-gradient(to right, #00ffcc 17%, #cc00cc  62%);text-align: center;">
              <label ><h3>Name: Avisto Banarjee</h3> </label>
               <label ><h4>Worked: Backend & Database</h4> </label>
              <div class= "card-body">
              
              <img class="card-img-top" src="img/avisto2.jpg" style="max-width:200px">
              </div>
              <br>
             
          </div>

          <div class="card col-sm-4 yytt" style="background: linear-gradient(to top right, #00ff99 17%, #ffff66 62%);text-align: center;">
              <label for="pwd"><h4>Name: Arkaprava De</h4> </label>
               <label ><h4>Worked: Frontend, UI & Database</h4> </label>
              <div class= "card-body">
              
              <img class="card-img-top" src="img/arka3.jpeg" style="max-width:200px;max-hight:30px">
              </div>
              <br>
          </div>
          </div>
          <br></section>


<br>
<div class="container col-lg-4 ">
		<div class="card" style = 'border-radius: 30px;'>
			<div class="card-header text-danger" style = 'background-color:#66ffff; border-radius: 30px;'>
				<fieldset>
					<legend class="text-center" ><b>Others</b> </legend>

				</fieldset>
			</div>
</div></div><br>

	<section class="row" style="margin-top:20px;margin-left: 5%;text-align: center; ">
	
	<div class='col-sm-12 '>
	

          <div class="card col-sm-4 yytt" style="background: linear-gradient(to left, #cc0099 17%, #ffff00 62%);text-align: center;">
              <label ><h3>Name: Ayush Jaswal</h3> </label>
               <label ><h4>Worked: Testing & PPT</h4> </label>
              <div class= "card-body">
              
              <img class="card-img-top" src="img/ayush.jpg" style="max-width:200px">
              </div><br>
             
          </div>

          
          <br></section>


<br>
<!-- Footer -->
	<br>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>