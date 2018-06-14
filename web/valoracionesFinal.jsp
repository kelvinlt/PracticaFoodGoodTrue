<%-- 
    Document   : valoracionesFinal
    Created on : 13-jun-2018, 19:31:12
    Author     : dawm
--%>

<%@page import="entities.Rate"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Date"%>
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
            List<Rate> todosValoracionesPorDish = (List<Rate>) request.getAttribute("todosValoracionesPorDish");
        %>

        <h1>Valoraciones de plato</h1>
        <%
            for (Iterator i = todosValoracionesPorDish.iterator(); i.hasNext();) {
                if (i.hasNext()) {
        %>
        User:<%= i%>
        
        <%                  
                }
            }
        %>

    </body>
</html>
