<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="model.Electro"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing</title>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/items.js"></script>
<script src="Components/jquery-3.2.1.min.js"></script>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-8">
				<h1 class="m-3">Make your Bill</h1>
				<form id="formItem" name="formItem">
					User Name: 
					<input id="username" name="username" type="text" class="form-control form-control-sm"> <br>
					
					 User Category:
					<select class="form-control form-control-sm" id="category" name="category"> 
					  <option value="1">Individual User</option>
					  <option value="2">PVT Company</option>
					  <option value="3">GOV Company</option>
					</select><br>
										
					 Number Of Units Used:
					 <input id="units" name="units" type="text" class="form-control form-control-sm"> <br>
					 
					   <div class="row">
					    <div class="col">
					    Charge for use
					      <input id="use" name="use" type="text" class="form-control form-control-sm" disabled>
					    </div>
					    <div class="col">
					    Tax for usage 
					      <input  id="tax" name="tax" type="text" class="form-control form-control-sm" disabled>
					    </div>
					    <div class="col">
					    Total Charge for the month 
					      <input id="bill" name="bill" type="text" class="form-control form-control-sm" disabled>
					    </div>
					  </div><br>
					 
					 <input id="btnSave" name="btnSave" type="button" value="Add" class="btn btn-primary"> <br> 
					 <input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value=""><br>

					<div id="alertSuccess" class="alert alert-success"></div>
					<div id="alertError" class="alert alert-danger"></div>
				</form>
			</div>
		</div>

		<br>
		<div class="row">
			<div class="col-12" id="colStudents">

     <%
    Electro itemObj = new Electro();
     out.print(itemObj.readBill());
%>
 
			</div>
		</div>

		
	</div>




	


</body>
</html>