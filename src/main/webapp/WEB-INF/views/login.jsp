<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">  
<head>
<meta charset="windows-1256">
<title>Login</title>

<style>

body{
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;

}
.container{
margin-top:-70px;
}
.card{
    width:500px;
    padding:15px;
    border:none;
    border-radius:20px;
}

.form-input input{
	width:450px;
    height:45px;
    padding-right:35px;
    border:2px solid #eee;
    border-radius:15px;
    transition:all 0.5s;
    margin:10px;
    padding:7px;
    font-size:20px;
    
}

.form-input input:focus{
    box-shadow:none;
    border:2px solid #000;
}

.info-text{
    font-size:23px;
    font-weight:bold;
}

.form-input i{
    position:absolute;
    top:14px;
    right:10px;
}

.go-button{
    border:none;
    height:50px;
    width:50px;
    font-size:29px;
    color:#fff;
    background-color:#651FFF;
    border-radius:50%;
    transition:all 0.5s;
}

.go-button:hover{
    background-color:#6200EA;
}
.createAccount{
	font-size:18px;
	font-weight:bold;
	margin-left:10px;
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
<body background="https://www.sagatraining.ca/wp-content/uploads/2018/10/background-images-for-login-form-8.jpg">

<%@include file="navbar.jsp" %>

<div class="container vh-100 d-flex justify-content-center align-items-center">
    <div class="card py-4 px-4">
        <div class="text-center">
            <img src="https://i.imgur.com/u5cP8rr.png" width="60">
        </div>

        <div class="text-center mt-3">
        <span class="info-text">Login</span>
        </div>
        
        <div class="errorMsg">
        	${errorMsg }
        </div>
        
        <form:form action="loginResult" method="post" modelAttribute="employee">
        
	        <div class="position-relative mt-3 form-input">
	             <form:input path="email" type="email" class="form-control" placeholder="Email *" />
	             <form:input path="password" type="password" class="form-control" placeholder="Password *" />
	            
	        </div>
	        
	        <div class=" mt-5 d-flex justify-content-between align-items-center">
	            <a href="/Employee/addEmployee" class="createAccount">Create Account</a>
	             <form:button class="go-button"><i class='bx bxs-right-arrow-alt' ></i></form:button>
	        </div>
	        
	    </form:form>
	    
	</div>
</div>
 
</body>
</html>