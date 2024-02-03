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
	<div class="container">
		<h3 class="text-center">Hello, indrasen</h3>
		<div class="row p-5">
			<div class="col-md-6">
			<a href="bookSale.jsp">
				<div class="card">
					<div class="card-body text-center">
						<div class="text-primary">
							<i class="fas fa-book-open fa-3x"></i>
						</div>
						<h3> Sell old book</h3>
					</div>
				</div>
			</a>
			</div>
			<div class="col-md-6">
			<a href="editProfile.jsp">
				<div class="card">
					<div class="card-body text-center">
						<div class="text-primary">
							<i class="fas fa-edit fa-3x"></i>
						</div>
						<h4>Login & Security(Edit Profile)</h4>
					</div>
				</div>
			</a>
			</div>
			
			<div class="col-md-4 mt-3">
			<a href="user_address.jsp">
				<div class="card">
					<div class="card-body text-center">
						<div class="text-warning">
							<i class="fas fa-map-marker-alt fa-3x"></i>
						</div>
						<h4>Your Address</h4>
						<p>Edit Address</p>
					</div>
				</div>
			</a>
			</div>
			<div class="col-md-4 mt-3">
			<a href="userOrder.jsp">
				<div class="card">
					<div class="card-body text-center">
						<div class="text-danger">
							<i class="fas fa-box-open fa-3x"></i>
						</div>
						<h4>My Order</h4>
						<p> Track My Order</p>
					</div>
				</div>
			</a>
			</div>
			<div class="col-md-4 mt-3">
			<a href="helpCenter.jsp">
				<div class="card">
					<div class="card-body text-center">
						<div class="text-warning">
							<i class="fas fa-user-circle fa-3x"></i>
						</div>
						<h4>Help Center</h4>
						<p>24*7 service</p>
					</div>
				</div>
			</a>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp" %>
</body>
</html>