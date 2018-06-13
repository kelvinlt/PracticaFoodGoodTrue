<%-- 
    Document   : altaDish
    Created on : 13-jun-2018, 15:50:53
    Author     : dawm
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta Plato</title>
    </head>
    <body>
        <h1>Alta de plato</h1>
        <%
            List<String> todosRestaurants = (List<String>) request.getAttribute("todosRestaurantes");
        %>
        <form method="POST" action="NewDish">
            <p>Nombre: <input type="text" name="name" required></p>
            <p>Tipo: <input type="text" name="type" required></p>
            <p>Restaurante: <select name="restaurant">
                    <% for (String c : todosRestaurants) { %>
                    <option value="<%=c%>" name="restaurant"><%=c%></option>
                    <% }%>
                </select>
            </p>
            <p>Precio: <input type="number" name="price" min="0" required></p>
            <p><input type="submit" value="Alta"></p>
        </form>
    </body>
</html>
