<%-- 
    Document   : altaValoracion
    Created on : 13-jun-2018, 18:32:07
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
        <%String status = (String) request.getAttribute("status");
        List<String> todosDishes = (List<String>) request.getAttribute("todosDishes");
        %>
        <h1>Selecionar un plato y dale una valoracion</h1>
        
        <form method="POST" action="AltaValoracionDish">
            <p>Plato: <select name="dish">
                    <% for (String c : todosDishes) { %>
                    <option value="<%=c%>" name="dish"><%=c%></option>
                    <% }%>
                </select>
            </p>
            <p>Puntuacion:<input type="number" name="mark" min="0" max="10" required></p></p>
            <p>Comentario:<input type="text" name="comment" required></p></p>
            <p><input type="submit" value="Seleccionar"></p>
        </form>
        
    </body>
</html>
