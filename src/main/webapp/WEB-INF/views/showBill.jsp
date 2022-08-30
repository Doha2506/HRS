<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Show Bill</title>

<style>

body{
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
	opacity:0.8
}

.form{
border:1px solid black;
width: 500px;
margin:60px 10px 20px 400px;
padding:12px;
background-color:#000000;
color:white;
font-wieght:bold;
}
select{
font-wieght:bold;
padding:7px;
margin:7px;
border-radius:5px;

}
label{
margin:7px;
color:#d4820c;
font-weight:bold;
font-size:17px;
}

</style>
</head>
<body background="https://www.entergraph.com/wp-content/uploads/2013/11/Hotel-Booking-web-sites-in-Thailand.jpg">
	
	<%@include file="navbar2.jsp" %>

	<div class="form">
		    
		  	<div class="form-group">
		    	<label for="firstName">First Name</label>
		    	<input id="firstName" type="text" class="form-control" value="${customer.firstName }" readonly/>
		 	</div>
		 	
		  	<div class="form-group">
		    	<label for="lastName">Last Name</label>
		    	<input id="lastName" type="text" class="form-control" value="${customer.lastName }" readonly/>
		 	</div>
		 	
		 	 <div class="form-group">
		    	<label for="identityNumber">Identity Number</label>
		    	<input id="identityNumber" type="text" class="form-control" value="${customer.identityNumber }" readonly/>
		 	</div>
		 	
		 	<div class="form-group">
		    	<label for="phoneNumber">Phone Number</label>
		    	<input id="phoneNumber" type="text" class="form-control" value="${customer.phoneNumber }" readonly/>
		 	</div>
		 	
		 	<div class="form-group">
		    	<label for="email">Email</label>
		    	<input id="email" type="text" class="form-control" value="${customer.email }" readonly/>
		 	</div>
		 	
		 	<div class="form-group">
		    	<label for="address">Address</label>
		    	<input id="address" type="text" class="form-control" value="${customer.adress }" readonly/>
		 	</div>
		 	
		 	<div class="form-group">
		    	<label for="entryTime">Entry Time</label>
		    	<input id="entryTime" type="text" class="form-control" value="${customer.entryTime }" readonly/>
		 	</div>
		 	
		 	<div class="form-group">
		    	<label for="exitTime">Exit Time</label>
		    	<input id="exitTime" type="text" class="form-control" value="${customer.exitTime }" readonly/>
		 	</div>
		 	
		 	
		 	<div class="form-group">
		        <label for="roomType">Room Type</label>
		        <select id="roomType" class="form-select" disabled>
		         	<option selected>${room.roomType }</option>
		           
		        </select>
		   	</div>
		   								
		   	<div class="form-group">
			    <label for="service">Used Services</label>
			    <select id="service" class="form-select" >
			    	<c:forEach items="${usedServices}" var="service">
		         		<option>${service.name} ($ ${service.price })</option>
		            </c:forEach>
		        </select>	        
		   	</div>
		   	
		   	
		   	<div class="form-group">
		    	<label for="roomPrice">Room Price</label>
		    	<input id="roomPrice" type="text" class="form-control" value="${room.price }" readonly/>
		 	</div>
		 	
		 	<div class="form-group">
		    	<label for="bill">Bill</label>
		    	<input id="bill" type="text" class="form-control" value="${bill }" readonly/>
		 	</div>
		 	
	
	 </div>
	 		  

</body>
</html>