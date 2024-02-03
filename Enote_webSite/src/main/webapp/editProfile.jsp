<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="all_component/navbar.jsp" %>
<c:if test="${empty user }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<div class="container mt-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h3 class="text-center text-primary p-4">Edit Profile</h3>
						
					<form action="" method="post">
						<div class="form-group">
							<label for="exampleInputPassword1">Name</label>
							<input type="text" class="form-control" name="name" id="exampleInputPassword1" required="required">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Email-Id</label>
							<input type="email" class="form-control" name="emailId" id="exampleInputPassword1" required="required">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">phone number</label>
							<input type="number" class="form-control" name="emailId" id="exampleInputPassword1" required="required">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label>
							<input type="password" class="form-control" name="password" id="exampleInputPassword1" required="required">
						</div>					
						
						<button type="submit" class="btn btn-primary">Update</button>
					</form>	
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>