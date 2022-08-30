<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Show Services</title>

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
    background: #94add6;
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


</style>
</head>
<body background="https://www.technologyvista.in/wp-content/uploads/2015/07/our-service.jpg">

	<%@include file="navbar2.jsp" %>
		
		<div class="table-title">
			<div class="row">
		    	<div class="col-sm-5">
		        	<h2><b>Service Management</b></h2>
		        </div>
		     </div>
		</div>
		
	<div>
		<table class="table table-hover table-dark">
		  <thead class="table-active">
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">Name</th>
		      <th scope="col">Price</th>
		      <th></th>
		      
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach items="${services}" var="service" >
		  	<tr>
		      <th scope="row">${service.id}</th>
		      <td>${service.name}</td>
		      <td>${service.price }</td>
		      <td>
		      	<a href="/Service/UpdateService?Id=${service.id}" class="settings" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
		        <a href="/Service/DeleteService?Id=${service.id }" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
		      </td>
		  	</tr>
		  </c:forEach>
		    
		  </tbody>
		</table>
	</div>

</body>
</html>