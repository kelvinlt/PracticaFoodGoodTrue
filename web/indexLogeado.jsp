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
            User u =(User) request.getAttribute("user");
        %>
        
        <h1>Index Logeado</h1>
        <h3>Status: <%= status %></h3>
        
        
    </body>
</html>
