<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="all_component/navbar.jsp" %>
<c:if test="${empty user }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<div class="container mt-3">
		<div class="row p-3">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
					<h3 class="text-center text-success mb-3">Add Address</h3>
						
						<form action="">
							
							 <div class="form-row">
							    <div class="form-group col-md-6">
							        <label for="inputPassword4">Address</label>
							        <input type="text" class="form-control" id="inputPassword4" name="address" >							
								 </div>
							    <div class="form-group col-md-6">
							       <label for="inputEmail4">Landmark</label>
							       <input type="text" class="form-control" id="inputEmail4" name="landmarks">
							    </div>
							    
							</div>
							 <div class="form-row">
							 	<div class="form-group col-md-4">
							        <label for="inputPassword4">City</label>
							        <input type="text" class="form-control" id="inputPassword4" name="city" >							   
								 </div>
							    <div class="form-group col-md-4">
							       <label for="inputEmail4">State</label>
							       <input type="text" class="form-control" id="inputEmail4" name="state">
							    </div>
							    <div class="form-group col-md-4">
							        <label for="inputPassword4">Pin Code</label>
							        <input type="text" class="form-control" id="inputPassword4" name="pincode">	
							    </div>
								 </div>
							 </div>
							<div class="text-center p-3 mb-2 ">
							 	<button class="btn btn-warning mr-4" type="submit">Save Now</button>	
							 </div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>




<%@include file="all_component/footer.jsp" %>
</body>
</html>