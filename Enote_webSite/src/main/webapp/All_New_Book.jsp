<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
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
<title>New Book</title>
<%@include file="all_component/allCss.jsp" %>
<style type="text/css">
            
            .crd-ho:hover{
                background-color: #fcf7f7;
    
            }
            #toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
        </style>
</head>
<body>

 						<c:if test="${not empty massage }">
                        	<div id="toast">${massage}</div>

								<script type="text/javascript">
										showToast();
										function showToast(content)
										{
										    $('#toast').addClass("display");
										    $('#toast').html(content);
										    setTimeout(()=>{
										        $("#toast").removeClass("display");
										    },2000)
										}	
								</script>
                        </c:if>
                         <c:if test="${not empty faliedmassage }">
                        	<div id="toast">${faliedmassage}</div>

							<script type="text/javascript">
									showToast();
									function showToast(content)
									{
									    $('#toast').addClass("display");
									    $('#toast').html(content);
									    setTimeout(()=>{
									        $("#toast").removeClass("display");
									    },2000)
									}	
							</script>
                        </c:if>

<%@include file="all_component/navbar.jsp" %>
 <% 
          User u=(User)session.getAttribute("user");
          %>
<div class="container-fluid">		              
                <div class="row p-3">
                    <%
					  	bookDAOImpl dao2=new bookDAOImpl(DBconnection.getConnection());
					  	List<BookDtls> list2=dao2.getAllNewBook();
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