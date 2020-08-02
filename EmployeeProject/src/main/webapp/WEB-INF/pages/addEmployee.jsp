<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" href="css/style.css">
    <title>AddEmployee</title>
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
<br>
<div class="container">
<form action="/getDepartments/addEmployee/save" method="POST" modelAttribute="employeeForm">
  <div class="row">
    <div class="col-sm-4">
      <div class="d-inline rounded p-2 bg-primary text-white">Professional Details</div><br><br>
    </div>
    <div class="col col-sm-2"></div>
    <div class="col-sm-4">
      <div class="d-inline rounded p-2 bg-primary text-white">Department Details</div><br><br>
    </div>
  </div>
<br>
  <div class="row">
    <div class="col-sm-4">
      <input type="number" class="form-control" name="empId" placeholder="Id">
    </div>
    <div class="col col-sm-2"></div>
    <div class="col-sm-4">
      <input type="number" class="form-control" name="deptId" placeholder="Department ID">
    </div>
  </div>
  <br>
    <div class="row">
    <div class="col-sm-4">
      <input type="text" class="form-control" name="empFirstName" placeholder="First name">
    </div>
    <div class="col col-sm-2"></div>
    <div class="col-sm-4">
      
    </div>
  </div>
  <br>
    <div class="row">
    <div class="col-sm-4">
      <input type="text" class="form-control" name="empLastName" placeholder="Last name">
    </div>
    <div class="col col-sm-2"></div>
  <div class="col-sm-4">
      <div class="d-inline rounded p-2 bg-primary text-white">Personal Address</div><br><br>
    </div>
  </div>
  <br>
    <div class="row">
    <div class="col-sm-4">
      <input type="text" class="form-control" name="empRole" placeholder="Role">
    </div>
    <div class="col col-sm-2"></div>
     <div class="col-sm-4">
      <input type="text" class="form-control" name="area" placeholder="Area">
    </div>
  </div>
  <br>
    <div class="row">
    <div class="col-sm-4">
      <input type="text" class="form-control" name="empDesignation" placeholder="Designation">
    </div>
    <div class="col col-sm-2"></div>
   <div class="col-sm-4">
      <input type="text" class="form-control" name="city" placeholder="City">
    </div>
  </div>
  <br>
    <div class="row">
    <div class="col-sm-4">
      <input type="text" class="form-control" name="empSalary" placeholder="Salary">
    </div>
    <div class="col col-sm-2"></div>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="pinCode" placeholder="Pin Code">
    </div>
   </div>
  <br>
   <div class="row">
    <div class="col-sm-4">
      <input type="number" class="form-control" name="empMobileNumber" placeholder="Mobile Number">
    </div>
    <div class="col col-sm-3"></div>
    <div class="col-sm-4">
     <button type="submit" class="btn btn-success p-2">Add Employee</button> 
    </div>
   </div>
  <br>
   <div class="row">
    <div class="col-sm-4">
      <input type="text" class="form-control" name="empStatus" placeholder="Status">
    </div>
    <div class="col col-sm-2"></div>
  </div>
</form>
</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>