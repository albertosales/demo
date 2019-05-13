<%-- 
    Document   : header
    Created on : Sep 24, 2017, 7:56:31 PM
    Author     : ysajid
--%>

<%@page import="beans.CartItem"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css/styles.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" crossorigin="anonymous"/>
</head>
<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a href="/Shopping/home" class="navbar-brand">Shopping</a>
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
            
            <ul class="nav navbar-nav navbar-right">
            <%
            	String username = (String) request.getSession(true).getAttribute("username");
                            ArrayList cart = (ArrayList) request.getSession(true).getAttribute("cart");

                            if(cart != null) {
                                int count = 0;
                                for(Object item : cart){
                                    count += ((Item) item).getCount();
                                }
                                out.print("<li><a href='cart'>Cart <span class='badge'>"+String.valueOf(count)+"</span></a></li>");
                            }
                            else {
                                out.print("<li><a href='cart'>Cart <span class='badge'>0</span></a></li>");
                            }
                            if(username != null){
                                out.print("<li><a href=''>"+username+"</a></li>");
                                out.print("<li><a href='logout'>Logout</a></li>");
                            }
                            else {
                                out.print("<li><a href='login.jsp'>Login</a></li>");
                            }
            %>            
            </ul>

        </div>
    </div>
</div>

<script src="js/script.js" ></script>