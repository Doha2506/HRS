<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html xmlns:th="http://ww.thymeleaf.org">
<head>
<meta charset="windows-1256">
<title>Add Reservation</title>

<style>
body{background-image: url('https://qloapps.com/wp-content/uploads/2020/07/reservation-5421878_1920-1024x683.jpg'); background-size: cover;}
.section{position: relative;height: 100vh}
.section .section-center{position: absolute;top: 50%;left: 0;right: 0;-webkit-transform: translateY(-50%);transform: translateY(-50%)}
#booking{font-family: 'Raleway', sans-serif}
.booking-form{position: relative;max-width: 642px;width: 100%;margin: auto;padding: 40px;overflow: hidden;border-radius: 5px;z-index: 20}
.booking-form::before{content: '';position: absolute;left: 0;right: 0;bottom: 0;top: 0;background: rgba(0, 0, 0, 0.7);z-index: -1}
.booking-form .form-header{text-align: center;position: relative;margin-bottom: 30px}
.booking-form .form-header h1{font-weight: 700;text-transform: capitalize;font-size: 42px;margin: 0px;color: #e35e0a}
.booking-form .form-group{position: relative;margin-bottom: 30px}
.booking-form .form-control{background-color: rgba(255, 255, 255, 0.2);height: 60px;padding: 0px 25px;border: none;border-radius: 40px;color: #fff;-webkit-box-shadow: 0px 0px 0px 2px transparent;box-shadow: 0px 0px 0px 2px transparent;-webkit-transition: 0.2s;transition: 0.2s}
.booking-form .form-control::-webkit-input-placeholder{color: rgba(255, 255, 255, 0.5)}
.booking-form .form-control:-ms-input-placeholder{color: rgba(255, 255, 255, 0.5)}
.booking-form .form-control::placeholder{color: rgba(255, 255, 255, 0.5)}
.booking-form .form-control:focus{-webkit-box-shadow: 0px 0px 0px 2px #ff8846;box-shadow: 0px 0px 0px 2px #ff8846}
.booking-form input[type="date"].form-control{padding-top: 16px}
.booking-form input[type="date"].form-control:invalid{color: rgba(255, 255, 255, 0.5)}
.booking-form input[type="date"].form-control+.form-label{opacity: 1;top: 10px}
.booking-form select.form-control{-webkit-appearance: none;-moz-appearance: none;appearance: none}
.booking-form select.form-control:invalid{color: rgba(255, 255, 255, 0.5)}
.booking-form select.form-control+.select-arrow{position: absolute;right: 15px;top: 50%;-webkit-transform: translateY(-50%);transform: translateY(-50%);width: 32px;line-height: 32px;height: 32px;text-align: center;pointer-events: none;color: rgba(255, 255, 255, 0.5);font-size: 14px}
.booking-form select.form-control+.select-arrow:after{content: '\279C';display: block;-webkit-transform: rotate(90deg);transform: rotate(90deg)}
.booking-form select.form-control option{color: #000}
.booking-form .form-label{position: absolute;top: -10px;left: 25px;opacity: 0;color: #ff8846;font-size: 11px;font-weight: 700;text-transform: uppercase;letter-spacing: 1.3px;height: 15px;line-height: 15px;-webkit-transition: 0.2s all;transition: 0.2s all}
.booking-form .form-group.input-not-empty .form-control{padding-top: 16px}
.booking-form .form-group.input-not-empty .form-label{opacity: 1;top: 10px}
.booking-form .submit-btn{color: #fff;background-color: #e35e0a;font-weight: 700;height: 60px;padding: 10px 30px;width: 70%;margin-left:150px;border-radius: 40px;border: none;text-transform: uppercase;font-size: 16px;letter-spacing: 1.3px;-webkit-transition: 0.2s all;transition: 0.2s all}
.booking-form .submit-btn:hover, .booking-form .submit-btn:focus{opacity: 0.9}
.checkboxLabel{
	color: white;
	margin-left: 20px;
}
.form-check-input{
	margin-left:15px;
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
<body>

	<%@include file="navbar2.jsp" %>

	<div id="booking" class="section"> 
		<div class="section-center">
			 <div class="container">
  				<div class="row"> 
  					<div class="booking-form">
   						<div class="form-header">
    						<h1>Make New Reservation</h1> 
    					</div>
    					     <div class="errorMsg">
						        	${errorMsg }
						      </div> 
   						<form:form action="SaveNewReservation" method="post" modelAttribute="reservation">
       						<div class="row"> 
     							<div class="col-md-6"> 
       								<div class="form-group">
                            			 <form:input path="firstName" class="form-control" type="text" placeholder="First Name *" required="true" />
                            
                  					</div> 
    							</div> 
      							<div class="col-md-6">
       								<div class="form-group">
                          				<form:input path="lastName" class="form-control" type="text" placeholder="Last Name *" required="true" />
                          
                 			 		</div> 
         						</div> 
         					</div> 
      
        					<div class="row"> 
     		 					<div class="col-md-6"> 
       								<div class="form-group">
                                    	<form:input path="identityNumber"  type="text" class="form-control"  minlength="14" maxlength="14" placeholder="Identity Number *" required="true" />
                  					</div> 
      							</div> 
      							<div class="col-md-6">
       								<div class="form-group">
                            			<form:input path="adress" class="form-control" type="text" placeholder="Address *" required="true" />
                  					</div> 
         						</div> 
        				 	</div> 
        					<div class="row"> 
                           		<div class="col-md-6"> 
                             		<div class="form-group">
                            			<form:input path="email" class="form-control" type="email" placeholder="Email *" required="true"/>
                             		</div> 
                             	</div> 
                             	<div class="col-md-6">
                              		<div class="form-group"> 
                              			<form:input path="phoneNumber" class="form-control" type="tel" placeholder="Phone Number *"   minlength="11" maxlength="11" required="true"/> 
                               		</div>
                                </div> 
                            </div> 
                            <div class="row"> 
	      						<div class="col-md-6"> 
	      								<div class="form-group"> 
	      									<form:input path="entryTime" class="form-control" type="date" required="true" /> 
	      									<span class="form-label">Check In *</span> 
	      								</div> 
	      							</div>
	      							
	      							<div class="col-md-6">
	       								<div class="form-group">
	        								<form:input path="exitTime" class="form-control" type="date" required="true" />
	         								<span class="form-label">Check Out *</span> 
	        	 					</div>
	        	 				</div>
        	 				</div>
         					<div class="row"> 
         						<div class="col-md-4"> 
         							<div class="form-group">
          								<form:select path="roomType" class="form-control" required="true"> 
								        	<option selected hidden>Room Type *</option> 
								          	<option>Single</option>
								           	<option>Double</option>
								            <option>Queen</option>
								            <option>King</option>
								            <option>Suite</option>
								        </form:select>
           								<span class="select-arrow"></span>
              						</div>
               					</div>
                				<div class="col-md-4">
                 					<div class="form-group"> 
                 						<form:select path="numberOfGusets" class="form-control" required="true"> 
						                 	<option value="" selected hidden>No of Guests *</option>
						                  	<option>1</option> 
						                 	<option>2</option>
						                   	<option>3</option>
						                   	<option>4</option> 
						                 	<option>5</option>
						                   	<option>6</option>
						                </form:select>
                    					<span class="select-arrow"></span> 
                    				</div> 
                    			</div> 
                    			<div class="col-md-4">
                 					<div class="form-group"> 
                 						<form:select path="paymentMethod" class="form-control" required="true"> 
						                	<option value="" selected hidden>Payment *</option>
						                  	<option>PayPal</option> 
						                  	<option>Cash</option>
						                </form:select>
                    					<span class="select-arrow"></span> 
                    				</div> 
                    			</div> 
                   			</div>
                   			
				        	<div class="row">
				        		<c:forEach items="${services}" var="service">
				        		 <div class="col-md-4"> 
      								<div class="form-group"> 
					  					<form:checkbox path="services" class="form-check-input" value="${service.name }" />
					  					<label class="checkboxLabel" for="wi-fi">${service.name } ($ ${service.price})</label>
									</div>
								</div>
								 </c:forEach>
							</div>
                            <div class="form-btn"> 
                                <form:button class="submit-btn">Book Now</form:button>
                            </div> 
    					</form:form>
                    </div> 
                </div> 
            </div> 
        </div>
	</div>

</body>
</html>