<%-- 
    Document   : home
    Created on : Sep 25, 2017, 11:15:53 PM
    Author     : ysajid
--%>

<%@page import="beans.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Shopping</title>
</head>
<jsp:include page="header.jsp"/>
<jsp:useBean id="productsBean" class="beans.Products"/>
<body>
    <div class='container' id='main-container'>
        <div class='row'>
            <%
                ArrayList<Product> products = productsBean.getProductList();

                for (Product product : products) {
                    %>
                    <div class='col-xs-4 item'>
                        <img class="img-responsive" src="images/<%=product.getImage_url()%>" />
                        <h4><%=product.getNome()%></h4>
                        <p><%=product.getDescricao()%></p>
                        <form class='form-group' method='POST' action=''>
                            <input type='hidden' value='<%=product.getId()%>' name='item_id'/>
                            <button class='btn btn-primary btn-sm pull-right' type='submit'>Add</button>
                        </form>
                    </div>
                    <%
                }
            %>
        </div>
    </div>
</body>

