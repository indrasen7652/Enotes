 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="com.Database.DBconnection" %>
    	<%@ page import="com.DAO.bookDAOImpl" %>
  	  	<%@ page import="com.entity.BookDtls" %>
  	  	<%@ page import="com.entity.User" %>
    <!DOCTYPE html>
    <html lang="en">
    
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>E : NOTES</title>
        <%@include file="all_component/allCss.jsp" %>
        <style type="text/css">
            .back-img{
                background: url("image/b.jpg");
                height: 50vh;
                width: 100%;
                background-repeat: no-repeat;
                background-size: cover;
            }
            .crd-ho:hover{
                background-color: #fcf7f7;
    
            }
        </style>
    </head>
        <body style="background-color: #f7f7f7;">
          
          <% 
          User u=(User)session.getAttribute("user");
          //System.out.println(u.getId());
          %>
          
          
            <%@include file="all_component/navbar.jsp" %>
             
             <%
            Connection conn= DBconnection.getConnection(); 
             // out.println(conn);
              %>
             
                <!--------Start banear -->
            <div class="container-fluid back-img">
                <h2 class="text-center text-danger">EBooks Managements System</h2>
            </div>
            
            <!----End Banear-->
            <!----------------Start Recent Books-------------->
            <div class="container">
                <h3 class="text-center">Recent Books</h3>
                <div class="row">
                    <%
					  	bookDAOImpl dao=new bookDAOImpl(DBconnection.getConnection());
					  	List<BookDtls> list=dao.getRecentBook();
					  	for(BookDtls b:list){
					%>
					<div class="col-md-3">
						<div class="card crd-ho">
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
                                    <a class="btn btn-danger btn-sm mt-1 ml-1 text-white">Pries:<i class="fa-solid fa-indian-rupee-sign"></i><%=b.getBookprice() %></a>
                                </div>
                            </div>
                        </div>
                    </div>
                   <% } %>
                </div>
                <div class="text-center">
                    <a href="Al_Recent_Book.jsp" class="btn btn-danger btn-sm mt-3">View All Recent Books</a>
                </div>
            </div>
         
       <!----------------End Recent Books-------------->
       <!----------------Start New Books------------------>
 
            <div class="container mt-4">
                <h3 class="text-center">New Books</h3>
                <div class="row">
                    
   
                    <%
					  	bookDAOImpl dao1=new bookDAOImpl(DBconnection.getConnection());
					  	List<BookDtls> list1=dao1.getNewBook();
					  	for(BookDtls b:list1){
					%>
					<div class="col-md-3">
						<div class="card crd-ho">
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
                                    <a class="btn btn-danger btn-sm mt-1 ml-1 text-white">Pries:<i class="fa-solid fa-indian-rupee-sign"></i><%=b.getBookprice() %></a>
                                </div>
                            </div>
                        </div>
                    </div>
                   <% } %>
                    
             </div>
                <div class="text-center">
                    <a href="All_New_Book.jsp" class="btn btn-danger btn-sm mt-3">view All new Books</a>
                </div>
            </div>
            
            <!----------------End new Books-------------->
            <!----------------Start New Books------------------>
            <div class="container mt-4">
                <h3 class="text-center">Old Books</h3>
                <div class="row">
                    
                    <%
					  	bookDAOImpl dao2=new bookDAOImpl(DBconnection.getConnection());
					  	List<BookDtls> list2=dao.getOldBook();
					  	for(BookDtls b:list2){
					%>
					<div class="col-md-3">
						<div class="card crd-ho">
                            <div class="card-body text-center">
                                <img src="image/<%=b.getBookimg()%>" alt="Java Books" style="width: 150px;height: 200px;" class="img-thumblin">
                                <p><%=b.getBookname() %></p>
                                <p><%=b.getAuthorname() %></p>
                                <p><%=b.getBooktype() %></p>
                                <div class="row">
                                   <!-- - <a href="" class="btn btn-primary mb-1"><i class="fa-solid fa-cart-shopping"></i>    Continew Shoping</a>-->
                                    <a href="View_Books_Detials.jsp?bookId=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-1">View Details</a>
                                    <a class="btn btn-danger btn-sm mt-1 ml-1 text-white">Pries: <i class="fa-solid fa-indian-rupee-sign"></i><%=b.getBookprice() %></a>
                                </div>
                            </div>
                        </div>
                    </div>
                   <% } %>
                </div>
                <div class="text-center">
                    <a href="All_Old_Book.jsp" class="btn btn-danger btn-sm mt-3">view All old Books</a>
                </div>
            </div>

            <!----------------End new Books-------------->
            <%@include file="all_component/footer.jsp" %>
        </body>
    </html>