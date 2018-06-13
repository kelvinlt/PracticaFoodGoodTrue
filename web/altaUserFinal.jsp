<%-- 
    Document   : altaUserFinal
    Created on : 13-jun-2018, 13:53:22
    Author     : dawm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta de Usuario</title>
    </head>
    <body>
        <%String status = (String) request.getAttribute("status");%>
        
        <h1><%= status %></h1>
    </body>
</html>
