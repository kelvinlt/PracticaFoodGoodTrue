<%-- 
    Document   : indexLogeado
    Created on : 13-jun-2018, 14:19:41
    Author     : dawm
--%>

<%@page import="entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <%String status = (String) request.getAttribute("status");
            User u = (User) session.getAttribute("user");
            String username = u.getUsername();
            int tipo = u.getType();
        %>

        <h1>Index Logeado</h1>
        <h3>Status: <%=status%></h3>
        <h3>Username: <%=username%></h3>


        <% if (tipo == 1) { %>
        Tipo de usuario=Admin
        <form action="altaRestaurante.html">
            <input type="submit" value="Nuevo Restaurante">
        </form>


        <%  } else {%>
        Tipo de usuario=User
        <%}%>
        <form action="GetRestaurants">
            <input type="hidden" id="option" name="option" value="0">
            <input type="submit" value="Nuevo Plato">
        </form>
        <form action="GetDish">
            <input type="hidden" id="option" name="option" value="0">
            <input type="submit" value="Cambio de precio de Plato">
        </form>
        <form action="GetDish">
            <input type="hidden" id="option" name="option" value="1">
            <input type="submit" value="Eliminacion de un plato">
        </form>
        <form action="ListadoDishName">
            <input type="hidden" id="option" name="option" value="0">
            <input type="submit" value="Valorar un plato">
        </form>
        <form action="ListadoDishName">
            <input type="hidden" id="option" name="option" value="1">
            <input type="submit" value="Valoraciones de un plato">
        </form>
    </body>
</html>
