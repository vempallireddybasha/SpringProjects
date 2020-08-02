<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
  <head>
  <link rel="stylesheet" href="css/style.css">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
    <title>Personal Data</title>
  </head>
  <body background="https://wallpaperaccess.com/full/1385491.jpg">
<div class="head">
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
      </li>
      </ul>
  </div>
</nav>
</div>
<br>
<br>
<br>
<br>
<div class="container">
  <div class="row">
  <div class="col">
  <div class="d-inline p-2 bg-primary text-white">Employee Details</div><br><br>
  </div>
 </div> 
  <div class="row justify-content-md-center">
  
    <div class="col"><c:if test="${empty employee}">
    <div class="text-danger"><h4>No Employees with such ID or NAME!</h4></div>
    </c:if>
    
 	<table class="table table-bordered table-striped bg-light">
  <tbody>
  
    <tr>
     <td><b>Employee ID</b></td>
     <td>${employee.getEmpId()}</td>
    </tr>
    <tr>
      <td><b>First Name</b></td>
     <td>${employee.getEmpFirstName()}</td>
    </tr>
    <tr>
      <td><b>Last Name</b></td>
     <td>${employee.getEmpLastName()}</td>
    </tr>
     <tr>
      <td><b>Role</b></td>
     <td>${employee.getEmpRole()}</td>
    </tr>
     <tr>
      <td><b>Designation</b></td>
     <td>${employee.getEmpDesignation()}</td>
    </tr>
     <tr>
      <td><b>Salary</b></td>
     <td>${employee.getEmpSalary()}</td>
    </tr>
    <tr>
      <td><b>Mobile Number</b></td>
     <td>${employee.getEmpMobileNumber()}</td>
    </tr>
    <tr>
      <td><b>Status</b></td>
     <td>${employee.getEmpStatus()}</td>
    </tr>
  </tbody>
</table>
    </div>
  </div>
  <div><br></div>
  <div class="row">
  <div class="col">
  <div class="d-inline p-2 bg-primary text-white">Addresses</div><br><br>
  </div>
 </div> 
  <div class="row justify-content-md-center">
    <div class="col">
    
    <c:if test="${empty employee.getAddresses()}">
    <div class="text-danger"><h4>No Address Available!</h4></div>
    </c:if>
    
     <c:forEach items="${employee.getAddresses()}" var="a">
     	
      <div class="d-inline-block p-1">
      
      <ul class="list-group">
 			 <li class="list-group-item"><c:out value="${a.getArea()}"/></li>
  			 <li class="list-group-item"><c:out value="${a.getCity()}"/></li>
 			 <li class="list-group-item"><c:out value="${a.getPinCode()}"/></li>
	 </ul>
      
      </div>
      </c:forEach>
    </div>
   
  </div>
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>