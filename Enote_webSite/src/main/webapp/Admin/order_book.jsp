<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin : order Books</title>
<%@ include file="allCss.jsp" %>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	<h3 class="text-center">Hello Admin</h3>
	<table class="table table-striped">
  <thead class="bg-primary">
    <tr>
      <th scope="col">Order ID</th>
      <th scope="col">Name</th>
      <th scope="col">Email Id</th>
      <th scope="col">Address</th>
      <th scope="col">Phone No</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author Name</th>
      <th scope="col">Price</th>
      <th scope="col">Payment Type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>indrasen Singh</td>
      <td>indrasensingh7652@gmail.com</td>
      <td>gendhariya sitapur uttarPradesh</td>
      <td>7652060471</td>
      <td>Java</td>
      <td>indrasen</td>
      <td>Not for Sale</td>
      <td>No Paymant</td>
    </tr>
   
  </tbody>
</table>
</body>
</html>