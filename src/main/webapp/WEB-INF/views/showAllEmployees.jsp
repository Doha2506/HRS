<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Show Employees</title>

<style>
body{
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
}
table{
   opacity:0.8
}

.table-primary,.table-danger{
	font-weight:bold;
	color:black;
}
.table-title {
    padding-bottom: 15px;
    background: #299be4;
    color: #fff;
    padding: 16px 30px;
    margin-top: 300px;
    border-radius: 3px 3px 0 0;
       opacity:0.8
}
.table-title h2 {
    margin: 5px 0 0;
    font-size: 24px;
}
table.table td a {
    font-weight: bold;
    color: #566787;
    display: inline-block;
    text-decoration: none;
}
table.table td a:hover {
    color: #2196F3;
}
table.table td a.settings {
    color: #2196F3;
}
table.table td a.delete {
    color: #F44336;
}
table.table td i {
    font-size: 19px;
}

</style>

</head>
<body background="https://www.sigmaassessmentsystems.com/wp-content/uploads/2015/03/shutterstock_249069352_retention.jpg">
	
	<%@include file="navbar2.jsp" %>
	
	<div class="table-title">
		<div class="row">
	    	<div class="col-sm-5">
	        	<h2><b>Employee Management</b></h2>
	        </div>
	     </div>
	</div>
	<table class="table table-dark table-hover">
	  <thead class="table-active">
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">First Name</th>
	      <th scope="col">Last Name</th>
	   	  <th scope="col">Identity Number</th>
	      <th scope="col">Email</th>
	      <th scope="col">Password</th>
	      <th scope="col">Phone Number</th>
	      <th scope="col">Gender</th>
	      <th scope="col">Department</th>
	      <th scope="col">Salary</th>     
	      <th></th>
	    </tr>
	  </thead>
	  <tbody>
	  <c:forEach items="${employees}" var="employee">
	  	<tr>
	      <th scope="row">${employee.id}</th>
	      <td>${employee.firstName}</td>
	      <td>${employee.lastName}</td>
	      <td>${employee.identityNumber }</td>
	      <td>${employee.email }</td>
	      <td>${employee.password }</td>
	      <td>${employee.phoneNumber }</td>
	      <td>${employee.gender }</td>
	      <td>${employee.deprtmentName }</td>
	      <td>${employee.salary }</td>
	      <td>
	      	<a href="/Employee/updateEmployee?Id=${employee.id }" class="settings" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
	        <a href="/Employee/DeleteEmployee?Id=${employee.id }" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
	      </td>
	  	</tr>
	  </c:forEach>
	    
	  </tbody>
	</table>

</body>
</html>