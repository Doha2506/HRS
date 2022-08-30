<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Show Rooms</title>

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
    background: #f0c179;
    color: #000000;
    padding: 16px 30px;
    margin-top: 300px;
    border-radius: 3px 3px 0 0;
    opacity:0.8;
  
}
.table-title h2 {
    margin: 5px 0 0;
    font-size: 24px;
    display:inline;
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
.select{

	color: #000000;
 	background: #f0c179;
 	padding:7px;
 	margin-left:950px;
 	margin-top:-20px;
 	display:inline;
 	font-weight: bold;
 	border-radius:5px;
	border: 1px solid black;
}
option{
font-weight: bold;
}

</style>
</head>


<body background="https://www.thegoldenhotel.com/wp-content/uploads/2018/10/deluxe-king-3.jpg">
		<%@include file="navbar2.jsp" %>
		
		<div class="table-title">
			<div class="row">
		    	<div class="col-sm-5">
		        	<h2><b>Room Management</b></h2>
		        	<select class="select">
			            <option value="NoFilter">No Filter</option>
			            <option value="single">Single</option>
			            <option value="double">Double</option>
			            <option value="king">King</option>
			            <option value="queen">Queen</option>
			            <option value="suite">Suite</option>
			            <option value="reserved">Reserved</option>
			            <option value="unReserved">Unreserved</option>
			        </select>
		        </div>
		     </div>
		</div>
		
	<div class="NoFilter box">
		<table class="table table-hover table-dark">
		  <thead class="table-active">
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">Type</th>
		      <th scope="col">No. of Guests</th>
		      <th scope="col">Price</th>
		      <th scope="col">Is Reserved ?</th>
		      <th>Services</th>
		      <th></th>
		      
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach items="${rooms}" var="room" varStatus="status">
		  	<tr>
		      <th scope="row">${room.id}</th>
		      <td>${room.roomType}</td>
		      <td>${room.numberOfGusets}</td>
		      <td>${room.price }</td>
		      <td>${room.reserved }</td>
		      <td>${services[status.index] } </td>
		      <td>
		      	<a href="/Room/UpdateRoom?Id=${room.id}" class="settings" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
		        <a href="/Room/DeleteRoom?Id=${room.id }" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
		      </td>
		  	</tr>
		  </c:forEach>
		    
		  </tbody>
		</table>
	</div>

	
	<div class="single box">
		<table class="table table-hover table-dark">
			<thead class="table-active">
			    <tr>
			    	<th scope="col">ID</th>
			      	<th scope="col">Type</th>
			      	<th scope="col">No. of Guests</th>
			      	<th scope="col">Price</th>
			      	<th scope="col">Is Reserved ?</th>
			      	<th></th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach items="${rooms}" var="room">
			  	
			  	<c:if test="${room.roomType == 'Single' }">
				  	<tr>
				      <th scope="row">${room.id}</th>
				      <td>${room.roomType}</td>
				      <td>${room.numberOfGusets}</td>
				      <td>${room.price }</td>
				      <td>${room.reserved }</td>
				      <td>
				      	<a href="/Room/UpdateRoom?Id=${room.id}" class="settings" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
				        <a href="/Room/DeleteRoom?Id=${room.id }" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
				      </td>
				  	</tr>
			  	</c:if>
			  	
			  </c:forEach>
			    
			</tbody>
		</table>
	
	
	</div>
	
	
	<div class="double box">
		<table class="table table-hover table-dark">
			<thead class="table-active">
			    <tr>
			    	<th scope="col">ID</th>
			      	<th scope="col">Type</th>
			      	<th scope="col">No. of Guests</th>
			      	<th scope="col">Price</th>
			      	<th scope="col">Is Reserved ?</th>
			      	<th></th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach items="${rooms}" var="room">
			  	
			  	<c:if test="${room.roomType == 'Double' }">
				  	<tr>
				      <th scope="row">${room.id}</th>
				      <td>${room.roomType}</td>
				      <td>${room.numberOfGusets}</td>
				      <td>${room.price }</td>
				      <td>${room.reserved }</td>
				      <td>
				      	<a href="/Room/UpdateRoom?Id=${room.id}" class="settings" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
				        <a href="/Room/DeleteRoom?Id=${room.id }" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
				      </td>
				  	</tr>
			  	</c:if>
			  	
			  </c:forEach>
			    
			</tbody>
		</table>
	</div>
	
	<div class="king box">
		<table class="table table-hover table-dark">
			<thead class="table-active">
			    <tr>
			    	<th scope="col">ID</th>
			      	<th scope="col">Type</th>
			      	<th scope="col">No. of Guests</th>
			      	<th scope="col">Price</th>
			      	<th scope="col">Is Reserved ?</th>
			      	<th></th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach items="${rooms}" var="room">
			  	
			  	<c:if test="${room.roomType == 'King' }">
				  	<tr>
				      <th scope="row">${room.id}</th>
				      <td>${room.roomType}</td>
				      <td>${room.numberOfGusets}</td>
				      <td>${room.price }</td>
				      <td>${room.reserved }</td>
				      <td>
				      	<a href="/Room/UpdateRoom?Id=${room.id}" class="settings" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
				        <a href="/Room/DeleteRoom?Id=${room.id }" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
				      </td>
				  	</tr>
			  	</c:if>
			  	
			  </c:forEach>
			    
			</tbody>
		</table>
	</div>
	
	<div class="queen box">
		<table class="table table-hover table-dark">
			<thead class="table-active">
			    <tr>
			    	<th scope="col">ID</th>
			      	<th scope="col">Type</th>
			      	<th scope="col">No. of Guests</th>
			      	<th scope="col">Price</th>
			      	<th scope="col">Is Reserved ?</th>
			      	<th></th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach items="${rooms}" var="room">
			  	
			  	<c:if test="${room.roomType == 'Queen' }">
				  	<tr>
				      <th scope="row">${room.id}</th>
				      <td>${room.roomType}</td>
				      <td>${room.numberOfGusets}</td>
				      <td>${room.price }</td>
				      <td>${room.reserved }</td>
				      <td>
				      	<a href="/Room/UpdateRoom?Id=${room.id}" class="settings" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
				        <a href="/Room/DeleteRoom?Id=${room.id }" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
				      </td>
				  	</tr>
			  	</c:if>
			  	
			  </c:forEach>
			    
			</tbody>
		</table>
	</div>
	
	<div class="suite box">
		<table class="table table-hover table-dark">
			<thead class="table-active">
			    <tr>
			    	<th scope="col">ID</th>
			      	<th scope="col">Type</th>
			      	<th scope="col">No. of Guests</th>
			      	<th scope="col">Price</th>
			      	<th scope="col">Is Reserved ?</th>
			      	<th></th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach items="${rooms}" var="room">
			  	
			  	<c:if test="${room.roomType == 'Suite' }">
				  	<tr>
				      <th scope="row">${room.id}</th>
				      <td>${room.roomType}</td>
				      <td>${room.numberOfGusets}</td>
				      <td>${room.price }</td>
				      <td>${room.reserved }</td>
				      <td>
				      	<a href="/Room/UpdateRoom?Id=${room.id}" class="settings" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
				        <a href="/Room/DeleteRoom?Id=${room.id }" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
				      </td>
				  	</tr>
			  	</c:if>
			  	
			  </c:forEach>
			    
			</tbody>
		</table>
	</div>
	
	<div class="reserved box">
		<table class="table table-hover table-dark">
			<thead class="table-active">
			    <tr>
			    	<th scope="col">ID</th>
			      	<th scope="col">Type</th>
			      	<th scope="col">No. of Guests</th>
			      	<th scope="col">Price</th>
			      	<th scope="col">Is Reserved ?</th>
			      	<th></th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach items="${rooms}" var="room">
			  	
			  	<c:if test="${room.reserved == 'Yes' }">
				  	<tr>
				      <th scope="row">${room.id}</th>
				      <td>${room.roomType}</td>
				      <td>${room.numberOfGusets}</td>
				      <td>${room.price }</td>
				      <td>${room.reserved }</td>
				      <td>
				      	<a href="/Room/UpdateRoom?Id=${room.id}" class="settings" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
				        <a href="/Room/DeleteRoom?Id=${room.id }" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
				      </td>
				  	</tr>
			  	</c:if>
			  	
			  </c:forEach>
			    
			</tbody>
		</table>
	</div>
	
	<div class="unReserved box">
		<table class="table table-hover table-dark">
			<thead class="table-active">
			    <tr>
			    	<th scope="col">ID</th>
			      	<th scope="col">Type</th>
			      	<th scope="col">No. of Guests</th>
			      	<th scope="col">Price</th>
			      	<th scope="col">Is Reserved ?</th>
			      	<th></th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach items="${rooms}" var="room">
			  	
			  	<c:if test="${room.reserved == 'No' }">
				  	<tr>
				      <th scope="row">${room.id}</th>
				      <td>${room.roomType}</td>
				      <td>${room.numberOfGusets}</td>
				      <td>${room.price }</td>
				      <td>${room.reserved }</td>
				      <td>
				      	<a href="/Room/UpdateRoom?Id=${room.id}" class="settings" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
				        <a href="/Room/DeleteRoom?Id=${room.id }" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
				      </td>
				  	</tr>
			  	</c:if>
			  	
			  </c:forEach>
			    
			</tbody>
		</table>
	</div>
	
	
	
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){
    $("select").change(function(){
        $(this).find("option:selected").each(function(){
            var optionValue = $(this).attr("value");
            if(optionValue){
                $(".box").not("." + optionValue).hide();
                $("." + optionValue).show();
            } else{
                $(".box").hide();
            }
        });
    }).change();
});
</script>

</body>
</html>