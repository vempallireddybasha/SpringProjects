<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Departments</title>
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript">
$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
});
</script>
</head>
<body>
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
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h1><b>Departments</b></h1></div>
                    <div class="col-sm-2">
                   <a href="getDepartments/addEmployee"><button type="button" class="btn btn-primary p-2"><i class="fa fa-plus"></i> Add Employee</button></a>
                    </div>
                     <div class="col-sm-2">
                    <button type="button" class="btn btn-primary p-2"><i class="fa fa-plus"></i> Add Department</button>
                    </div>
                </div>  
            </div>
            <div>
            <c:forEach var = "dept" items = "${dept}">
           		<div class="row">
                    <div class="col-sm-8"><h3><b>Department Name:${dept.getDeptName()}</b></h3></div>
                </div>
            <table class="table table-striped table-hover table-bordered">
                <thead>
                    <tr>
                         <th>Employee ID</th>
    					 <th>First Name</th>
     					 <th>Last Name</th>
     					 <th>Role</th>
     					 <th>Designation</th>
     					 <th>Salary</th>
      					 <th>MobileNumber</th>
      					 <th>Status</th>
     					 <th>Action</th>
     					 
                    </tr>
                </thead>
                <tbody>
                    
                         <c:forEach items="${dept.getEmployees()}" var="e">
 							<tr>
    							 <td><c:out value="${e.getEmpId()}"/></td>
    							 <td><c:out value="${e.getEmpFirstName()}"/></td>
    							 <td><c:out value="${e.getEmpLastName()}"/></td>
    							 <td><c:out value="${e.getEmpRole()}"/></td>
    							 <td><c:out value="${e.getEmpDesignation()}"/></td>
    							 <td><c:out value="${e.getEmpSalary()}"/></td>
    							 <td><c:out value="${e.getEmpMobileNumber()}"/></td>
    							 <td><c:out value="${e.getEmpStatus()}"/></td>
    							 
    							 <td>
										<a href="/getDepartments/employeeInfo/${e.getEmpId()}" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                           				<a href="/getDepartments/edit/${e.getEmpId()}" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                           				<a href="/getDepartments/delete/${e.getEmpId()}" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                       			 </td>
     						</tr>
    					 </c:forEach>
                   <div><br></div>
                </tbody>
            </table>
            </c:forEach>
            </div>
        </div>
    </div>     
</body>
</html> 