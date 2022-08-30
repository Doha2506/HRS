<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Add Service</title>

<style>
body{
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
	opacity:0.8;
}

form{
	background-color:#000000;
	width:400px;
	height:300px;
	margin:150px 400px;
	padding:10px;
	border-radius:5px;
}

input{
	padding:5px;
	margin:5px 10px;
	
}

label{
	margin:7px 5px;
	color:#ffffff;
	font-size:17px;
	
}

.add{
	margin-left:300px;
	padding:7px;
	margin-top:20px;
	border-radius:5px;
	margin:20px 15px 15px 200px;
	width:100px;

}
.errorMsg{
	font-size:18px;
	font-weight:bold;
	margin-left:10px;
	padding: 5px;
	color:red;
}

</style>

</head>
<body background="https://www.reminetwork.com/wp-content/uploads/building-services.jpg">
	<%@include file="navbar2.jsp" %>
	
    
   <form:form action="SaveService" method="post" modelAttribute="service" >
    
	    	<div class="errorMsg">
	        	${errorMsg }
	   		 </div>
	   		 
		 	<div class="form-group">
		    	<label for="serviceName">Service Name</label>
		    	<form:input path="name" type="text" class="form-control" id="serviceName" placeholder="Service Name"/>
		 	</div>
		 	
		  	<div class="form-group">
		    	<label for="inputPrice">Service Price</label>
		    	<form:input path="price" type="text" class="form-control" id="inputPrice" placeholder="Price"/>
		 	</div>
		 	
		 	<div class="form-group">
		    	<form:button class="add btn-warning">Add</form:button>
		 	</div>
	 	
	</form:form>		
		
		
</body>
</html>