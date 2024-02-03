<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E : NOTES</title>
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
    <!------------ Login Content------
            ----------------------------------
            -----------------------------------
        --->
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center">Login Page</h4>
                        <c:if test="${not empty logoutmass }">
                        	<p class="text-center text-success">${logoutmass }</p>
                        	<c:remove var="logoutmass" scope="session"/>
                        </c:if>
                        <form action="Login" method="post" class="mt-4">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail1"
                                    aria-describedby="emailHelp" placeholder="Enter email" required="required" name="email">
                            </div>

                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword1"
                                    placeholder="Password" required="required" name="password">
                            </div>
                            <c:if test="${not empty failed }">
                        	<p class="text-center text-danger">${failed }</p>
                        	<c:remove var="failed" scope="session"/>
                        </c:if>
                            <div class="text-center mt-4">
                                <button type="submit" class="btn btn-primary">Submit</button><br>
                                <a href="ragistration.jsp" class="mt-2">Create Account</a>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!------------Login page Content--------->
</body>

</html>