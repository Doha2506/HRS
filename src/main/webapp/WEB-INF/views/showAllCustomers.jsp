<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Show Customers</title>

<style>
body{
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
}
table{
opacity:0.8;

}

.table-primary,.table-danger{
	font-weight:bold;
	color:black;
}
.table-title {
    padding-bottom: 15px;
    background: #f0c179;
    color: #000000;
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
    font-size:20px;
}
table.table td a.delete {
    color: #F44336;
}
table.table td i {
    font-size: 19px;
}

</style>
</head>
<body background="https://deentrance.com/wp-content/uploads/2019/03/Hotel-Reservation.jpg">

<%@include file="navbar2.jsp" %>

	<div class="table-title">
		<div class="row">
	    	<div class="col-sm-5">
	        	<h2><b>Customer Management</b></h2>
	        </div>
	     </div>
	</div>
	<table class="table table-hover table-dark">
	  <thead class="table-active">
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">First Name</th>
	      <th scope="col">Last Name</th>
	   	  <th scope="col">Identity Number</th>
	      <th scope="col">Email</th>
	      <th scope="col">Address</th>
	      <th scope="col">Phone Number</th>
	      <th scope="col">Entry Time</th>
	      <th scope="col">Exit Time</th>
	      <th scope="col">Room Number</th>     
	      <th></th>
	      <th></th>
	    </tr>
	  </thead>
	  <tbody>
	  <c:forEach items="${customers}" var="customer">
	  	<tr>
	      <th scope="row">${customer.id}</th>
	      <td>${customer.firstName}</td>
	      <td>${customer.lastName}</td>
	      <td>${customer.identityNumber }</td>
	      <td>${customer.email }</td>
	      <td>${customer.adress }</td>
	      <td>${customer.phoneNumber }</td>
	      <td>${customer.entryTime }</td>
	      <td>${customer.exitTime }</td>
	      <td>${customer.roomNumber }</td>
	      <td>
	      	<a href="/Customer/ShowBill?customerId=${customer.id }&roomId=${customer.roomNumber}" class="settings" title="Bill" data-toggle="tooltip">Bill</a>
	      </td>
	     
	      <td>
	      	<a href="/Customer/UpdateCustomer?Id=${customer.id}" class="settings" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
	        <a href="/Customer/DeleteCustomer?Id=${customer.id }" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
	      </td>
	  	</tr>
	  </c:forEach>
	    
	  </tbody>
	</table>

</body>
</html>