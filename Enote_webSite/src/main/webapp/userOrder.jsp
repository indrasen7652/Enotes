<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Books</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="all_component/navbar.jsp" %>
<c:if test="${empty user }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<h3 class="text-center">All My Order</h3>
	<table class="table table-striped">
		  <thead class="bg-primary text-white">
		    <tr>
		      <th scope="col">Order ID</th>
		      <th scope="col">Name</th>
		      <th scope="col">Book Name</th>
		      <th scope="col">Author Name</th>
		      <th scope="col">Price</th>
		      <th scope="col">Payment Type</th>
		      <th scope="col">Check order Diliver or Not</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <td>1</td>
     	      <td>indrasen Singh</td>
		      <td>Java</td>
		      <td>indrasen</td>
		      <td>Not for Sale</td>
		      <td>No Paymant</td>
		      <td>
		      <a href="" class="btn btn-success">check order</a>
		      <a href="" class="btn btn-danger">cansle order</a>
		      </td>
		    </tr>   
  			</tbody>
  		</table>
 
</body>
</html>