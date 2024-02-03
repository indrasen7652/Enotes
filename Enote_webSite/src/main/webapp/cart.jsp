<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
		<%@page isELIgnored="false" %>
 		<%@ page import="java.util.List" %>
    	<%@ page import="java.sql.*" %>
    	<%@ page import="com.Database.DBconnection" %>
    	<%@ page import="com.DAO.cartDAOImpl" %>
  	  	<%@ page import="com.entity.Cart" %>
  	  	<%@ page import="com.entity.User" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart Page</title>
 <%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color: #f7f7f7;">
<%@include file="all_component/navbar.jsp" %>
						<c:if test="${not empty successfull }">
                        	<div class="alert alert-success text-center" role="alert">${successfull }</div>
                        	<c:remove var="successfull" scope="session"/>
                        </c:if>
                        <c:if test="${not empty failed }">
                        	<div class="alert alert-success text-center" role="alert">${failed }</div>
                        	<c:remove var="failed" scope="session"/>
                        </c:if>
	<c:if test="${empty user }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<div class="container">
		<div class="row p-2">
			<div class="col-md-6">
				
				<div class="card bg-white">
					<div class="card-body">
						<h3 class="text-center text-success">Your Selct Item</h3>
						<table class="table table-striped">
						  <thead>
						    <tr>
						      <th scope="col">Book Name</th>
						      <th scope="col">Author Name</th>
						      <th scope="col">Price</th>
						      <th scope="col">Action</th>
						    </tr>
						  </thead>
						
						  <tbody>
						  <%
						  User u=(User)session.getAttribute("user");
						  //System.out.println(u);
						  cartDAOImpl b=new cartDAOImpl(DBconnection.getConnection()); 
						  List<Cart> cart=b.getBookByUser(u.getId());
						  double totalpice=0.0;
						 // System.out.println(cart);
						  for(Cart c:cart){
							  totalpice=c.getTotalprice();
						  %>
						    <tr>
						      <td><%=c.getBookname() %></td>
						      <td><%=c.getAuthorname() %></td>
						      <td><%=c.getBookprice() %></td>
						      <td><a href="removebookServlet?bookId=<%=c.getBookId() %>&&uId=<%=c.getuId() %>" class="btn btn-danger btn-sm">Remove</a></td>
						    </tr>
						    
						    <%} %>
						    <tr>
						      <td>Total Pries</td>
						      <td></td>
						      <td></td>
						      <td><%=totalpice %></td>
						    </tr>
						 </tbody>
						</table>
						<%
						 //for(Cart c:cart){
							// System.out.println(c.getBookname());
							// System.out.println(c.getAuthorname());
						//	 System.out.println(c.getBookprice());
					   // }
						%>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-success">User Detials</h3>
						
						<form action="">
							<div class="form-row">
							    <div class="form-group col-md-6">
							       <label for="inputEmail4">Name</label>
							       <input type="text" class="form-control" id="inputEmail4"  name="name" value="<%=u.getName() %>" readonly="readonly">
							    </div>
							    <div class="form-group col-md-6">
							        <label for="inputPassword4">Email Id</label>
							        <input type="email" class="form-control" id="inputPassword4" name="emailid" value="<%=u.getEmailid() %>" readonly="readonly">							   
								 </div>
							</div>
							 <div class="form-row">
							    <div class="form-group col-md-6">
							       <label for="inputEmail4">Phone Number</label>
							       <input type="text" class="form-control" id="inputEmail4" name="phoneno" value="<%=u.getPhoneno()%>" readonly="readonly">
							    </div>
							    <div class="form-group col-md-6">
							        <label for="inputPassword4">Address</label>
							        <input type="text" class="form-control" id="inputPassword4" name="address" >							
								 </div>
							 </div>
							 <div class="form-row">
							    <div class="form-group col-md-6">
							       <label for="inputEmail4">Landmark</label>
							       <input type="text" class="form-control" id="inputEmail4" name="landmarks">
							    </div>
							    <div class="form-group col-md-6">
							        <label for="inputPassword4">City</label>
							        <input type="text" class="form-control" id="inputPassword4" name="city" >							   
								 </div>
							</div>
							 <div class="form-row">
							    <div class="form-group col-md-6">
							       <label for="inputEmail4">State</label>
							       <input type="text" class="form-control" id="inputEmail4" name="state">
							    </div>
							    <div class="form-group col-md-6">
							        <label for="inputPassword4">Pin Code</label>
							        <input type="text" class="form-control" id="inputPassword4" name="pincode">	
							    						    </div>
								 </div>
							 </div>
							 <div class="form-group">
							 	<label>Payment Mode</label>
							    <select class="form-control" name="">
							    <option>----Select----</option>
							    <option>Cash Delivery</option>
							    </select>
							 </div>
							 <div class="text-center p-3 mb-2 mt-2 ">
							 	<button class="btn btn-warning mr-4">Order Now</button>
							 	<a href="index.jsp"class="btn btn-success">Continue Shopping</a>
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