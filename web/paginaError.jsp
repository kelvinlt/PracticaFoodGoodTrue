<%-- 
    Document   : paginaError
    Created on : 13-jun-2018, 14:41:54
    Author     : dawm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%String status = (String) request.getAttribute("status");
        %>
        
        <h1>Pagina de error</h1>
        <h3>Status: <%= status %></h3>
        
    <form action="index.html">
            <input type="submit" value="Go to Home">
    </form>
    </body>
</html>
