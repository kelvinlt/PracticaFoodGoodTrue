<%-- 
    Document   : removeDish
    Created on : 13-jun-2018, 20:01:14
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
        <h1>Eliminacion de un plato</h1>
        <%
            List<String> todosDishes = (List<String>) request.getAttribute("todosDishes");
        %>
        <form method="POST" action="RemoveDish">
            <p>Dish <select name="dish">
                    <% for (String c : todosDishes) { %>
                    <option value="<%=c%>" name="dish"><%=c%></option>
                    <% }%>
                </select>
            </p>
            <p><input type="submit" value="Eliminar"></p>
        </form>
        
        
        
    </body>
</html>
