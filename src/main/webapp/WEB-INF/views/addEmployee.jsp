<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html xmlns:th="http://ww.thymeleaf.org">
<head>
<meta charset="windows-1256">
<title>Add Employee</title>
 
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
 
<style type="text/css">
body{
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
	opacity:0.9;
}
.register{
  background: -webkit-linear-gradient(left, #8e5316, #8e5316);
    margin-top: 3%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}

.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    font-size:22px;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    float: right;
    margin-top: 20%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #8e5316;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}

.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #8e5316;
    font-weight:bold;
}
.register-left h3{
margin-top:100px;
font-size:40px;
}
.form-control{
margin:7px;
}
.label{
margin-left:10px;
color:#8e5316;
font-weight:bold;
}

</style>

</head>

<body background="https://media.cntraveler.com/photos/53fb780b81424d9d655bcc70/master/w_1200,c_limit/hotel-reception-desk.jpg">
	
	<%@include file="navbar2.jsp" %>
	
	<div class="container register">
         <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>A new person is about to join our community</p> 
                        
                    </div>
                    <div class="col-md-9 register-right">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Add Employee</h3>
                                
                                <form:form action="SaveNewEmployee" method="post" modelAttribute="employee">
						            
						            <div class="row register-form">
	                                    <div class="col-md-6">
	                                        <div class="form-group">
	                                        	<label class="label">First Name *</label>
	                                             <form:input  path="firstName" type="text" class="form-control" placeholder="First Name *" value="" />
	                                        </div>
	                                      
	                                      	<div class="form-group">
	                                      	 	<label class="label">Email *</label>
	                                            <form:input  path="email" type="email" class="form-control" placeholder="Email *" value="" />
	                                        </div>
	                                        
	                                      	<div class="form-group">
	                                      	 	<label class="label">Identity Number *</label>
	                                            <form:input  path="identityNumber"  type="text" class="form-control"  minlength="14" maxlength="14" placeholder="Identity Number *" value="" />
	                                        </div>
	                                        
	                                          <div class="form-group">
	                                        	<label class="label">Department *</label>
	                                            <form:select path="deprtmentName" class="form-control">
	                                                <option>General Manager</option>
	                                                <option> Financial Manager</option>
	                                                <option> HR Manager</option>
	                                                <option>Receptionist</option>
	                                                <option>Luggage carrier</option> 
	                                                <option>Clean Worker</option>
	                                            </form:select>
	                                        </div>
	                                       
	                                          <div class="form-group">
	                                          	<label class="label">Gender *</label>
	                                          
	                                            <form:select path="gender" class="form-control">
	                                                <option>Male</option>
	                                                <option>Female</option>
	                                            </form:select>
	                                        </div>
	                                        
	                                        
	                                        
	                                    </div>
	                                    <div class="col-md-6">
	                                    	  <div class="form-group">
	                                    	  <label class="label">Last Name *</label>
	                                            <form:input  path="lastName" type="text" class="form-control" placeholder="Last Name *" value="" />
	                                        </div>
	                                        
	                                        <div class="form-group">
	                                        	<label class="label">Password *</label>
	                                           <form:input  path="password" type="password" class="form-control" placeholder="Password *" value="" />
	                                        </div>
	                                        
	                                        <div class="form-group">
	                                        	<label class="label">Phone Number *</label>
	                                            <form:input  path="phoneNumber" type="text" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Phone Number *" value="" />
	                                        </div>
	                                        
	                                          <div class="form-group">
	                                         	<label class="label">Salary *</label>
	                                            <form:input  path="salary" type="text" class="form-control" placeholder="Salary *" value="" />
	                                        </div>
	                                        
	                                        
	                                      
	                                        
	                                        
	                                        
	                                        
	                                      
	                                        
	                                        
	                                        
                                        	<div>
                                     			<form:button class="btnRegister">Add</form:button>
                                			</div>
                                			
                                			
                                			
						    			</div>
						           </div>
						        </form:form>
                            </div>
                        </div>
                    </div>
                </div>
 			</div>
</body>
</html>