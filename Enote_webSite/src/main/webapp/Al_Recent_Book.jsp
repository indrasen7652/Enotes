<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.util.List" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="com.Database.DBconnection" %>
    <%@ page import="com.DAO.bookDAOImpl" %>
  	<%@ page import="com.entity.BookDtls" %>
  	<%@ page import="com.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recent Book</title>
<%@include file="all_component/allCss.jsp" %>
<style type="text/css">
            .crd-ho:hover{
                background-color: #fcf7f7; 
            }
        </style>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
 <% 
          User u=(User)session.getAttribute("user");
          %>
<div class="container-fluid">		              
                <div class="row p-3">
                    <%
					  	bookDAOImpl dao2=new bookDAOImpl(DBconnection.getConnection());
					  	List<BookDtls> list2=dao2.getALLRecentBook();
					  	for(BookDtls b:list2){
					%>
					<div class="col-md-3">
						<div class="card crd-ho mt-2">
                            <div class="card-body text-center">
                                <img src="image/<%=b.getBookimg()%>" alt="Java Books" style="width: 150px;height: 200px;" class="img-thumblin">
                                <p><%=b.getBookname() %></p>
                                <p><%=b.getAuthorname() %></p>
                                <p><%=b.getBooktype() %></p>
                                <div class="row">
                                <%if(u==null){ %>
                                <a href="login.jsp" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-shopping"></i>Add Crad</a>
                                <%}else{ %>
                                <a href="cartServlet1?bookId=<%=b.getBookId() %>&&uId=<%=u.getId() %>" class="btn btn-danger btn-sm"><i class="fa-solid fa-cart-shopping"></i>Add Crad</a>
                                <%} %>
                                
                                    <a href="View_Books_Detials.jsp?bookId=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">View Details</a>
                                    <a class="btn btn-danger btn-sm mt-1 ml-1 text-white">Pries <i class="fa-solid fa-indian-rupee-sign"></i>:<%=b.getBookprice() %></a>
                                </div>
                            </div>
                        </div>
                    </div>
                   <% } %>
                </div>
	</div>
	 <%@include file="all_component/footer.jsp" %>
</body>
</html>