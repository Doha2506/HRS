<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Update Service</title>

<style>
body{
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
	opacity:0.9;
}

form{
	background-color:#000000;
	width:400px;
	height:270px;
	margin:200px 470px;
	padding:10px;
	border-radius:5px;
}

input{
	padding:5px;
	margin:5px 10px;
	border-radius:5px;
	
}

label{
	margin:7px 7px;
	color:#ffffff;
	font-size:17px;
}

.add{
margin-left:300px;
padding:7px;
margin-top:20px;
border-radius:5px;
margin:20px 15px 15px 200px;
width:120px;
}


</style>
</head>
<body background="https://www.technologyvista.in/wp-content/uploads/2015/07/our-service.jpg">
	
	<%@include file="navbar2.jsp" %>
	
	<form:form action="saveUpdateService?Id=${service.id }" method="post" modelAttribute="service" >
	<div id="addService">
			 	<div class="form-group">
			    	<label for="serviceName">Service Name</label>
			    	<form:input path="name" type="text" class="form-control" id="serviceName" placeholder="Service Name" value="${service.name }"/>
			 	</div>
			 	
			  	<div class="form-group">
			    	<label for="inputPrice">Service Price</label>
			    	<form:input path="price" type="text" class="form-control" id="inputPrice" placeholder="Price" value="${service.price }"/>
			 	</div>
			 	
			 	<div class="form-group">
			    	<form:button class="add btn-primary">Save</form:button>
			 	</div>
			 	
	</div>	
	</form:form>		
</body>
</html>