<%-- 
    Document   : login.jsp
    Created on : Sep 17, 2017, 11:29:21 AM
    Author     : ysajid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <jsp:include page="header.jsp" />
    <body>
        <div class="container">
            <form class="form-signin" id="signin" action="login" method="POST">
                <h2 class="form-signin-heading">Please sign in</h2>
                <p id="error" class="text-danger">
                <%
                    String error = (String) request.getAttribute("error");
                    if (error != null) {
                        out.println(error);
                    }
                %>  
                </p>
                <label for="username" class="sr-only">Username</label>
                <input id="username" class="form-control" placeholder="Username" required="" autofocus="" type="text" name="username">
                <label for="inputPassword" class="sr-only">Password</label>
                <input id="password" class="form-control" placeholder="Password" required="" type="password" name="password">
                <button class="btn btn-md btn-primary btn-block" type="submit">Login</button>
            </form>

        </div>
    </body>
</html>
