<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@ page import="java.util.List" %>
  	<%@ page import="com.DAO.bookDAOImpl" %>
  	<%@ page import="com.Database.DBconnection" %>
  	<%@ page import="com.entity.BookDtls" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin : All Books</title>
<%@ include file="allCss.jsp" %>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	<c:if test="${empty user }">
		<c:redirect url="../login.jsp"/>
	</c:if>
	<h3 class="text-center">Hello Admin</h3>
	<c:if test="${not empty Success }">
        <h4 class="text-center text-success">${Success }</h4>
     	<c:remove var="Success" scope="session"/>
    </c:if> 
    <c:if test="${not empty worg }">
        <h4 class="text-center text-danger">${worg }</h4>
     	<c:remove var="worg" scope="session"/>
    </c:if> 
	<table class="table table-striped">
  <thead class="bg-primary">
    <tr>
      <th scope="col">ID</th>	
      <th scope="col">Images</th>
      <th scope="col">Books Name</th>
      <th scope="col">Author Name</th>
      <th scope="col">Price</th>
      <th scope="col">Categeries</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>

  	<%
  	bookDAOImpl dao=new bookDAOImpl(DBconnection.getConnection());
  	List<BookDtls> list=dao.getAllBooks();
  	for(BookDtls b:list){
  	%>
  	<tr>
      <td><%=b.getBookId() %></td>
      <td><img src="../image/<%=b.getBookimg() %>" style="width:50px; height:50px;"></td>
      <td><%=b.getBookname()%></td>
      <td><%=b.getAuthorname()%></td>
      <td><%=b.getBookprice()%></td>
      <td><%=b.getBooktype()%></td>
      <td><%=b.getBookstatus()%></td>
      <td>
      <a href="edit_Book.jsp?bookId=<%=b.getBookId() %>" class="btn btn-sm btn-primary">Edit</a>
      <a href="../deleteBookServlet?bookId=<%=b.getBookId()%>" class="btn btn-sm btn-danger">Delete</a>
      </td>
    </tr>	
  	<%
  	}
  	%>
   
  </tbody>
</table>
</body>
</html>