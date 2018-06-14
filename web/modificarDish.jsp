<%-- 
    Document   : modificarDish
    Created on : 14-jun-2018, 9:49:13
    Author     : dawm
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Modificacion de precio de un plato</h1>
        <%
            List<String> todosDishes = (List<String>) request.getAttribute("todosDishes");
        %>
        <form method="POST" action="ModifyDish">
            <p>Dish <select name="dish">
                    <% for (String c : todosDishes) { %>
                    <option value="<%=c%>" name="dish"><%=c%></option>
                    <% }%>
                </select>
            </p>
            <p>Precio: <input type="number" name="price" min="0" max="99" required></p>
            <p><input type="submit" value="Modificar"></p>
        </form>
    </body>
</html>
