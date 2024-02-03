<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
	<%@ include file="allCss.jsp" %>
	<style type="text/css">
		a{
		text-decoration: none;
		color: black;
		}
		a:hover{
		text-decoration: none;
		color: black;
		}
	</style>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	
	<c:if test="${empty user }">
		<c:redirect url="../login.jsp"/>
	</c:if>
	
	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_book.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-square-plus fa-3x text-primary"></i></br>
							<h4>Add Books</h4>
							------------
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-3">
			<a href="all_book.jsp">
				<div class="card">
					<div class="card-body text-center ">
						<i class="fa-solid fa-book fa-3x text-danger"></i></br>
						<h4>all Books</h4>
						------------
					</div>
				</div>
			</a>
			</div>
			<div class="col-md-3">
				<a href="order_book.jsp">
				<div class="card">
					<div class="card-body text-center">
						<i class="fa-solid fa-box-open fa-3x text-warning"></i></br>
						<h4>order Books</h4>
						------------
					</div>
				</div>
				</a>
			</div>
			<div class="col-md-3">
				<a data-toggle="modal" data-target="#exampleModalCenter">
				<div class="card">
					<div class="card-body text-center">
						<i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i></br>
						<h4>Logout</h4>
						------------
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="mt-4">
	<%@ include file="footer.jsp" %>
	</div>
</body>
</html>