<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User sale Books</title>
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
					<h3 class="text-center text-primary p-4">Sell Books</h3>
						<c:if test="${not empty Msg }">
                        	<p class="text-center text-success">${Msg }</p>
                        	<c:remove var="Msg" scope="session"/>
                        </c:if>
                        <c:if test="${not empty FailMsg }">
                        	<p class="text-center text-danger">${FailMsg }</p>
                        	<c:remove var="FailMsg" scope="session"/>
                        </c:if>
					<form action="" method="post" enctype="multipart/form-data">
						<div class="form-group">
							<label for="exampleInputPassword1">Book Name</label>
							<input type="text" class="form-control" name="bookname" id="exampleInputPassword1">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Author Name</label>
							<input type="text" class="form-control" name="authorname" id="exampleInputPassword1">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Price*</label>
							<input type="text" class="form-control" name="bookprice" id="exampleInputPassword1">
						</div>					
						
						<div class="form-group">
							<label for="exampleFormControlFile1">Upload Photo</label>
							<input type="file" name="bookimg" class="form-control-file" id="exampleFormControlFile1">
						</div>
						<button type="submit" class="btn btn-primary">Sell books</button>
					</form>	
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>