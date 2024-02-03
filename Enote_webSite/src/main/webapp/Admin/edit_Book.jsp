<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: ADD BOOKS</title>
<%@ include file="allCss.jsp" %>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	<c:if test="${empty user }">
		<c:redirect url="../login.jsp"/>
	</c:if>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h3 class="text-center">Edits Books</h3>
						
                         	<%@ page import="java.util.List" %>
  							<%@ page import="com.DAO.bookDAOImpl" %>
  							<%@ page import="com.Database.DBconnection" %>
  							<%@ page import="com.entity.BookDtls" %>
                        <%
                        int id=Integer.parseInt(request.getParameter("bookId"));
                        bookDAOImpl dao=new bookDAOImpl(DBconnection.getConnection());
                        BookDtls b=dao.getBookById(id);
                       // out.println(b.getBookId());
                        %>      
                        
					
					<form action="../adminEditBookServlet" method="post">
						<input type="hidden" name="bookId" value="<%=b.getBookId() %>">
						<div class="form-group">
							<label for="exampleInputPassword1">Book Name</label>
							<input type="text" class="form-control" name="bookname" id="exampleInputPassword1" value="<%=b.getBookname() %>">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Author Name</label>
							<input type="text" class="form-control" name="authorname" id="exampleInputPassword1" value="<%=b.getAuthorname() %>">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Price*</label>
							<input type="text" class="form-control" name="bookprice" id="exampleInputPassword1" value="<%=b.getBookprice() %>">
						</div>
						
						
						<div class="form-group">
							<label for="inputStare">Book Status</label>
							<select id="inputStare" name="bookstatus" class="form-control">
								<% if("Active".equals(b.getBookstatus())){ %>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								<%}else{%>												
								<option value="Inactive">Inactive</option>
								<option value="Active">Active</option>
								<%}%>
							</select>
						</div>
						
						<button type="submit" class="btn btn-prinary">Edit</button>
					</form>	
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>