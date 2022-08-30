<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Update Customer</title>
 
<style type="text/css">

body {
    background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
}

.container{
opacity:0.8;

}

.form-control:focus {
    box-shadow: none;
    border-color: #BA68C8
}

.back:hover {
    color: #682773;
    cursor: pointer
}

.labels {
    font-size: 17px;
    font-weight:bold;
    margin:7px;
    color:#d4820c;
    
}
h4,span,.text-black-50{
color:#d4820c;
}
.btnSave{
    float: right;
    margin: -10px 100px 40px 20px;;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #d4820c;
    color: #000000;
    font-weight: 800;
    width: 50%;
    cursor: pointer;
}


</style>
</head>
<body background="https://deentrance.com/wp-content/uploads/2019/03/Hotel-Reservation.jpg">
		<%@include file="navbar2.jsp" %>

	<div class="container rounded bg-dark mt-5">
	    <div class="row">
	        <div class="col-md-3 border-right">
	            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
	            	<img class="rounded-circle mt-5" width="150px" src="https://tse3.mm.bing.net/th?id=OIP.puMo9ITfruXP8iQx9cYcqwHaGJ&pid=Api&P=0">
	            	<span class="font-weight-bold">${customer.firstName}</span>
	            	<span class="font-weight-bold">${customer.email}</span>
	            </div>
	        </div>
	        <div class="col-md-5 border-right">
	            <div class="p-3 py-5">
	                <div class="d-flex justify-content-between align-items-center mb-3">
	                    <h4 class="text-right">Customer Profile</h4>
	                </div>
	                
	                <form:form action="saveUpdateCustomer?Id=${customer.id}" method="post" modelAttribute="customer">
	                
		                <div class="row mt-2">
		                    <div class="col-md-6">
		                    	<label class="labels">First Name</label>
		                    	<form:input path="firstName" type="text" class="form-control" placeholder="first name" value="${customer.firstName}" />
		                    </div>
		                    <div class="col-md-6">
		                    	<label class="labels">Last Name</label>
		                    	<form:input path="lastName" type="text" class="form-control" placeholder="last name" value="${customer.lastName}" />
		                    </div>
		                </div>
		                <div class="row mt-3">
		                    <div class="col-md-12">
		                    	<label class="labels">Phone Number</label>
		                    	<form:input path="phoneNumber" type="text" class="form-control" placeholder="Phone Number" value="${customer.phoneNumber }" />
		                    </div>
		                    <div class="col-md-12">
		                    	<label class="labels">Identity Number</label>
		                    	<form:input path="identityNumber" type="text" class="form-control" placeholder="Identity Number" value="${customer.identityNumber}" />
		                    </div>
		                    <div class="col-md-12">
		                    	<label class="labels">Email</label>
		                    	<form:input path="email" type="email" class="form-control" placeholder="Email" value="${customer.email }" />
		                    </div>
		                    <div class="col-md-12">
		                    	<label class="labels">Address</label>
		                   	 	<form:input path="adress" type="text" class="form-control" placeholder="Address" value="${customer.adress }" />
		                   	</div>
		                    <div class="col-md-12">
		                    	<label class="labels">Entry Time</label>
		                    	<form:input path="entryTime" type="text" class="form-control" placeholder="Entry Time" value="${customer.entryTime}" />
		                    </div>
		                    <div class="col-md-12">
		                    	<label class="labels">Exit Time</label>
		                    	<form:input path="exitTime" type="text" class="form-control" placeholder="Exit Time" value="${customer.exitTime}" />
		                    </div>
		                    <div class="col-md-12">
		                    	<label class="labels">Room Number</label>
		                    	<form:input path="roomNumber" type="text" class="form-control" placeholder="Room Number" value="${customer.roomNumber}" />
		                    </div>
		                </div>
		                
		                <div class="mt-5 text-center">
		                	<form:button class="btnSave">Save Profile</form:button>
		                </div>
	                </form:form>
	            </div>
	        </div>
	    </div>
	</div>
</div>
</body>
</html>