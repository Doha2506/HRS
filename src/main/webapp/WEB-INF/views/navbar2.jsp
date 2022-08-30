<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet" id="bootstrap-css">
<link href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" rel="stylesheet" id="bootstrap-css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
 <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
.signUp,.login{
margin:5px 15px;
color: white;
text-decoration: none;
}
.signUp:hover,.login:hover {
  color: #d4820c;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="/home2">HRS</a>
   
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/home2">Home</a>
        </li>

        <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Services
          </a> 
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="/Employee/AddEmployee">Add Employee</a></li>
            <li><a class="dropdown-item" href="/Customer/AddReservation">Add Reservation</a></li>
            <li><a class="dropdown-item" href="/Room/AddRoom">Add Room</a></li>
            <li><a class="dropdown-item" href="/Service/AddService">Add Service</a></li>
            
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="Employee/ShowAllEmployees">Show Employees</a></li>
            <li><a class="dropdown-item" href="/Customer/ShowAllCustomers">Show Customers</a></li>
            <li><a class="dropdown-item" href="/Customer/ShowNearCheckoutCustomer">Show Near Checkout Customers</a></li>
            <li><a class="dropdown-item" href="/Room/ShowAllRooms">Show Rooms</a></li>
            <li><a class="dropdown-item" href="/Service/ShowAllServices">Show Services</a></li>
          </ul>
        </li>
    
      </ul>

    	
    </div>
  </div>
</nav>

</body>
</html>