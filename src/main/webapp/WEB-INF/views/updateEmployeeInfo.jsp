<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html xmlns:th="http://ww.thymeleaf.org">
<head>
<meta charset="windows-1256">
<title>Update Employee </title>
<!-- 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js" rel="stylesheet" id="bootstrap-css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet" id="bootstrap-css">
 -->
 
<style type="text/css">

body {
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
	opacity:0.9;
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
    font-size: 15px;
    margin:7px;
    font-weight:bold;
    color:#3399FF;
}

h4,.name,.email{
color:#3399FF;
font-weight:bold;
margin:5px;
}

.btnSave{
    float: right;
    margin: -10px 100px 40px 20px;;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #0062cc;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}


</style>

</head>
<body  background="https://www.sigmaassessmentsystems.com/wp-content/uploads/2015/03/shutterstock_249069352_retention.jpg">
		
		<%@include file="navbar2.jsp" %>

<div class="container rounded bg-dark mt-5 ">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
            	<img class="rounded-circle mt-5" width="170px" src="https://tse3.mm.bing.net/th?id=OIP.puMo9ITfruXP8iQx9cYcqwHaGJ&pid=Api&P=0">
            	<span class="name font-weight-bold">${employee.firstName}</span>
            	<span class="email">${employee.email}</span>
            </div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Employee Profile</h4>
                </div>
                
                <form:form action="saveUpdateEmployee?Id=${employee.id}" method="post" modelAttribute="employee">
                
	                <div class="row mt-2">
	                    <div class="col-md-6">
	                    	<label class="labels">First Name</label>
	                    	<form:input path="firstName" type="text" class="form-control" placeholder="first name" value="${employee.firstName}" />
	                    </div>
	                    <div class="col-md-6">
	                    	<label class="labels">Last Name</label>
	                    	<form:input path="lastName" type="text" class="form-control" placeholder="last name" value="${employee.lastName}" />
	                    </div>
	                </div>
	                <div class="row mt-3">
	                    <div class="col-md-12">
	                    	<label class="labels">Phone Number</label>
	                    	<form:input path="phoneNumber" type="text" class="form-control" placeholder="Phone Number" value="${employee.phoneNumber }" />
	                    </div>
	                    <div class="col-md-12">
	                    	<label class="labels">Identity Number</label>
	                    	<form:input path="identityNumber" type="text" class="form-control" placeholder="Identity Number" value="${employee.identityNumber}" />
	                    </div>
	                    <div class="col-md-12">
	                    	<label class="labels">Email</label>
	                    	<form:input path="email" type="email" class="form-control" placeholder="Email" value="${employee.email }" />
	                    </div>
	                    <div class="col-md-12">
	                    	<label class="labels">Password</label>
	                   	 	<form:input path="password" type="text" class="form-control" placeholder="Password" value="${employee.password }" />
	                   	</div>
	                    <div class="col-md-12">
	                   	 	<label class="labels">Gender</label>
	                   	 	<form:select path="gender" class="form-control">
	                            <option class="hidden"  selected disabled>${employee.gender }</option>
	                            <option>Male</option>
	                            <option>Female</option>
	                        </form:select>
	                    </div>
	                    <div class="col-md-12">
	                    	<label class="labels">Department Name</label>
		                    <form:select path="deprtmentName" class="form-control">
		                        <option class="hidden"  selected disabled>${employee.deprtmentName}</option>
		                        <option>General Manager</option>
		                        <option> Financial Manager</option>
		                        <option> HR Manager</option>
		                        <option>Receptionist</option>
		                        <option>Luggage carrier</option> 
		                        <option>Clean Worker</option>
		                     </form:select>
	                    </div>
	                    <div class="col-md-12">
	                    	<label class="labels">Salary</label>
	                    	<form:input path="salary" type="text" class="form-control" placeholder="Salary" value="${employee.salary}" />
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

</body>
</html>