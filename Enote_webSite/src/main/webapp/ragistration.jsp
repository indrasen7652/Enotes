<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E : Registration</title>
    <%@include file="all_component/allCss.jsp" %>
    <style type="text/css">
        .back-img {
            background: url("image/b.jpg");
            height: 50vh;
            width: 100%;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .crd-ho:hover {
            background-color: #fcf7f7;

        }
    </style>
</head>

<body style="background-color: #f7f7f7;">

    <%@include file="all_component/navbar.jsp" %>
    <!------------Ragistration page Content------
            ----------------------------------
            -----------------------------------
        --->
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center">Registration Page</h4>
                        <c:if test="${not empty succesfull }">
                        	<p class="text-center text-success">${succesfull }</p>
                        	<c:remove var="succesfull" scope="session"/>
                        </c:if>
                        <c:if test="${not empty failed }">
                        	<p class="text-center text-danger">${failed }</p>
                        	<c:remove var="failed" scope="session"/>
                        </c:if>
                                               
                        <c:if test="${not empty accept }">
                        	<p class="text-center text-danger">${accept }</p>
                        	<c:remove var="accept" scope="session"/>
                        </c:if>
                        <form action="ragisrater" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Enter FullName</label>
                                <input type="text" class="form-control" id="exampleInputEmail1"
                                    aria-describedby="emailHelp" placeholder="Enter FullName" required="required" name="name">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail1"
                                    aria-describedby="emailHelp" placeholder="Enter email" required="required" name="email">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Phone No</label>
                                <input type="number" class="form-control" id="exampleInputEmail1"
                                    aria-describedby="emailHelp" placeholder="Enter Phone No" required="required" name="phone">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1"
                                    placeholder="Password" required="required" name="password">
                            </div>
                            <div class="form-check">
                                <input type="checkbox" name="check" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@include file="all_component/footer.jsp" %>


</body>

</html>