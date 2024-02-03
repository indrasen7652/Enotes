<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Detials</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color: #f0f1f2">
<%@include file="all_component/navbar.jsp" %>
 <%@ page import="java.sql.*" %>
    <%@ page import="com.Database.DBconnection" %>
    <%@ page import="com.DAO.bookDAOImpl" %>
  	<%@ page import="com.entity.BookDtls" %>
  	<%@ page import="com.entity.User" %>
  	<%
  	//System.out.println(request.getParameter("bookId"));
  	int bookId=Integer.parseInt(request.getParameter("bookId"));
   	bookDAOImpl dao2=new bookDAOImpl(DBconnection.getConnection());
	BookDtls b=dao2.getBooksDetials(bookId);
	%>
	<% 
          User u=(User)session.getAttribute("user");
          %>
<div class="container p-5">
	<div class="row">
	<div class="col-md-6 text-center p-5 border bg-white">
	<img alt="" src="image/<%=b.getBookimg()%>" style="height: 150px; width:150px;">
		<h4 class="mt-4">Book Name: <span class="text-success"><%=b.getBookname() %></span></h4>
		<h4>Author Name:<span class="text-success"><%=b.getAuthorname() %></span></h4>
		<h4>Category:<span class="text-success"> <%=b.getBooktype() %></span></h4>
	</div>
	<div class="col-md-6 text-center p-5 border bg-white">
		<% if(b.getBooktype().equals("old")){%>
		<h5 class="text-center">Contact to Saller</h5>
		<h5 class="text-center"><i class="fa-regular fa-envelope"></i> Email :<%=b.getEmail() %></h5>
		<%} %>
		<h2>Java Programing</h2>
		<div class="row">
			<div class="col-md-4 text-danger text-center p-2">
			<i class="fa-solid fa-wallet fa-3x"></i>
			<p>Cash On Delivery</p>
			</div>
			<div class="col-md-4 text-danger text-center p-2">
			<i class="fa-solid fa-arrow-rotate-left fa-3x"></i>
			<p>Return Available</p>
			</div>
			<div class="col-md-4 text-danger text-center p-2">
			<i class="fa-solid fa-truck fa-3x"></i>
			<p>Free Delivery</p>
			</div>
		</div>
		<% if(b.getBooktype().equals("old")){%>
		<div class="text-center p-3">
			<a href="index.jsp" class="btn btn-primary"><i class="fa-solid fa-cart-shopping"></i>    Continew Shoping</a>
			<a class="btn btn-danger text-white">Praies: <i class="fa-solid fa-indian-rupee-sign"></i> <%=b.getBookprice() %></a>
			
		</div>
		<%}else{ %>
			<div class="text-center p-3">
			<a href="cartServlet1?bookId=<%=b.getBookId() %>&&uId=<%=u.getId() %>" class="btn btn-primary"><i class="fa-solid fa-cart-shopping"></i>    Add Card</a>
			<a class="btn btn-danger text-white">Praies: <i class="fa-solid fa-indian-rupee-sign"></i> <%=b.getBookprice() %></a>
			
		</div>
		<%} %>
		
	</div>
	</div>
</div>

<%@include file="all_component/footer.jsp" %>
</body>
</html>