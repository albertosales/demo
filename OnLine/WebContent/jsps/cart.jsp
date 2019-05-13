<%-- 
    Document   : cart
    Created on : Sep 25, 2017, 12:15:32 AM
    Author     : ysajid
--%>

<%@page import="beans.CartItem"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Cart</title>
    </head>
    <jsp:include page="header.jsp" />
    <body>

        <div class='container' id='main-container'>
            <h2 class='text-primary'>
                My Cart
                <form class='form-group' method='POST' action='' style="display: inline;">
                    <input type="hidden" name="checkout" value="checkout"/>
                    <button class='btn btn-default btn-sm' type='submit'>Checkout</button>
                </form>
            </h2>
            
            <div class='row'>
                <%
                	ArrayList<Item> cart = (ArrayList<Item>) request.getSession().getAttribute("cart");

                                    if(cart != null) {
                                        for (Item item : cart) {
                %>
                            <div class='col-xs-3 item'>
                                <h4><%=item.getNome()%><span class="badge pull-right"> <%=item.getCount()%></span></h4>
                                <form class='form-group' method='POST' action=''>
                                    <input type='hidden' value='<%=item.getId()%>' name='item_id'/>
                                    <button class='btn btn-danger btn-sm pull-right' type='submit'>Remove</button>
                                </form>
                            </div>
                            <%
                        }
                    }
                %>            

            </div>
        </div>
        <!--<div class="alert alert-info hidden" id="alert">-->
        <!--</div>-->
    </body>
</html>
