<%-- 
    Document   : listadoPlatosValoracion
    Created on : 13-jun-2018, 17:25:10
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
        <h1>Seleciona un plato para ver todas sus valoraciones</h1>
        
        <form method="POST" action="ValoracionesPlato">
            <p>Plato: <select name="dish">
                    <% for (String c : todosDishes) { %>
                    <option value="<%=c%>" name="dish"><%=c%></option>
                    <% }%>
                </select>
            </p>
            <p><input type="submit" value="Seleccionar"></p>
        </form>
        
    </body>
</html>
