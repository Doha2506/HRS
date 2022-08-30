<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Update Room</title>
 
<style type="text/css">

body{
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
	opacity:0.8;
}

.form{
	background-color:#000000;
	width:500px;
	height:450px;
	margin:150px 350px;
	padding:10px;
	border: 2px solid #000000;
}

.form-control{
	padding:5px;
	margin:5px 10px;
	
}
label{
color:#ffffff;

}
.form-group{
	width:440px;
}

label{
	margin:5px 10px;
}
.btn-primary{
	margin:5px 15px 15px 60px;
	width:120px;
}
.save{
	margin-left:330px;
	margin-top:20px;
	padding:7px;
	border-radius:5px;
	width:70px;
}
</style>
</head>

<body background="https://www.thegoldenhotel.com/wp-content/uploads/2018/10/deluxe-king-3.jpg">
		
		<%@include file="navbar2.jsp" %>
	
	<form:form class="form" action="saveUpdateRoom?Id=${room.id }" method="post" modelAttribute="room">
		
		<div>
		    <div class="form-group">
		        <label for="inputRoomType">Room Type</label>		         	
		        <form:select path="roomType" class="form-control" required="true"> 
					<option selected hidden>${room.roomType }</option> 
					<option>Single</option>
					<option>Double</option>
					<option>Queen</option>
					<option>King</option>
					<option>Suite</option>
				</form:select>
		   	</div>
	
		  	<div class="form-group">
		    	<label for="noOfGusets">No of Guests</label>
		    	<form:input path="numberOfGusets" type="text" class="form-control" id="noOfGusets" placeholder="No of Guests" value="${room.numberOfGusets }"/>
		 	</div>
		 	
		  	<div class="form-group">
		    	<label for="inputPrice">Price</label>
		    	<form:input path="price" type="text" class="form-control" id="inputPrice" placeholder="Price" value="${room.price }"/>
		 	</div>
		 	
		 	<div class="form-group">
		        <label>Is Reserved?</label>
		        <form:select path="reserved" class="form-control">
		         	<option class="hidden"  selected disabled>${room.reserved }</option>
		         	<option>Yes</option>
		         	<option>No</option>
		        </form:select>
		   	</div>
		   	
		 	<div class="form-group">
		    	<form:button class="save btn-success">Save</form:button>
		 	</div>
		 	
		 	
	 	</div>
	 	
	 </form:form>
</body>
</html>