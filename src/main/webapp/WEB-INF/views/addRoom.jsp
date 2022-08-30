<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html xmlns:th="http://ww.thymeleaf.org">
<head>
<meta charset="windows-1256">
<title>Add Room</title>
 
<style>
body{
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
	opacity:0.8;
}

form{
	background-color:#000000;
	width:450px;
	height:400px;
	margin:150px 400px;
	padding:10px;
	border: 2px solid #000000;
}

input,select{
	padding:5px;
	margin:5px 10px;
	
}
label{
	color:#ffffff;
	margin:7px 5px;
	font-size:17px;
}

.add{
	margin-left:300px;
	padding:7px;
	margin-top:20px;
	border-radius:5px;
	margin:20px 15px 15px 250px;
	width:120px;

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
<body background="https://qtxasset.com/styles/breakpoint_xl_880px_w/s3/travelagentcentral/1515685668/roomservicegetty.jpg?BvX5tPbySyH24E7ufXsRfH.1XELq18LX&itok=-QHbLsAF">
	
	<%@include file="navbar2.jsp" %>
	
	<form:form action="SaveRoom" method="post" modelAttribute="room" >	
		
			<div class="errorMsg">
	        	${errorMsg }
	        </div>
		
		    <div class="form-group">
		        <label for="inputRoomType">Room Type</label>
		        <form:select path="roomType" id="inputRoomType" class="form-control">
		         	<option class="hidden"  selected disabled>Room Type</option>
		           	<option>Single</option>
		           	<option>Double</option>
		            <option>Queen</option>
		            <option>King</option>
		            <option>Suite</option>
		        </form:select>
		   	</div>
	
		  	<div class="form-group">
		    	<label for="noOfGusets">No of Guests</label>
		    	<form:input path="numberOfGusets" type="number" class="form-control" id="noOfGusets" placeholder="No of Guests"/>
		 	</div>
		 	
		  	<div class="form-group">
		    	<label for="inputPrice">Price</label>
		    	<form:input path="price" type="text" class="form-control" id="inputPrice" placeholder="Price"/>
		 	</div>
		 	
		 	<div class="form-group">
		    	<form:button class="add btn-warning">Add</form:button>
		 	</div>

	 		  	
	</form:form>		
	
</body>
</html>