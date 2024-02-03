    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
    <!--- COPY Another Page Navbar-->
    <div class="container-fluid" style="height: 10px; background-color: #303f9f"></div>
    <div class="container-fluid p-3 bg-light">
        <div class="row">
            <div class="col-md-3 text-success">
                <h3><i class="fa-solid fa-book"></i>Ebooks Indrasen</h3>
            </div>
            <div class="col-md-6">
                <form class="form-inline my-2 my-lg-0" action="search.jsp" method="post">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="ch">
                    <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
            
            <c:if test="${not empty user }">
            
            <div class="col-md-3">
            	<a class="btn btn-success mb-2"><i class="fa-solid fa-user"></i>${user.emailid }</a>
            	<a href="cart.jsp" class="btn btn-success mb-2"><i class="fa-solid fa-cart-shopping fx-2"></i>Shopping</a>
                <a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-primary mb-2"><i class="fa-solid fa-right-to-bracket"></i>Logout</a>
            </div>            
            </c:if>
            
            <c:if test="${empty user }">
 			<div class="col-md-3">
                <a href="login.jsp" class="btn btn-success"><i class="fa-solid fa-right-to-bracket"></i>Login</a>
                <a href="ragistration.jsp" class="btn btn-primary"><i class="fa-solid fa-user"></i>Register</a>
            </div>
            </c:if>
         </div>
    </div>
    
    
    <!-- Modal -- data-toggle="modal" data-target="#exampleModalCenter" --->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="text-center">
        <h4>Do you Want to Logout</h4>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="logout" type="button" class="btn btn-primary text-white">Logout</a>
      </div>
      </div>
    </div>
  </div>
</div>
    
    <nav class="navbar navbar-expand-lg navbar-light bg-custom">
        <a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp"><i class="fa-solid fa-house"></i>Home <span
                            class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="Al_Recent_Book.jsp"><i class="fa-solid fa-book-open-reader"></i>Recent Books</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="All_New_Book.jsp"><i class="fa-solid fa-book-bookmark"></i>New Books</a>
                </li>

                <li class="nav-item active">
                    <a class="nav-link disabled" href="All_Old_Book.jsp"><i class="fa-sharp fa-light fa-book-user"></i>Old Books</a>
                </li>
            </ul>
           
            <c:if test="${not empty user }">
                       <form class="form-inline my-2 my-lg-0">
                <a href="settingpage.jsp" class="btn btn-success my-2 my-sm-0 ml-1" ><i class="fa-solid fa-gear"></i>Setting
                </a>
                <button class="btn btn-light my-2 my-sm-0 ml-1" type="submit"><i
                        class="fa-regular fa-address-book"></i>Contact Us</button>
            </form>
            </c:if>
            
        </div>
    </nav>