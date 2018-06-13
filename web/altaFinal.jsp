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
        <title>Alta</title>
    </head>
    <body>
        <%String status = (String) request.getAttribute("status");
        int tipo = 0;
        %>
        
        <h1><%=status%></h1>
        
        <%if(tipo==0){%>
        <form method="POST" action="index.html">
            <p><input type="submit" value="Index"></p>
        </form>


        <% }else{ %>
        <form method="POST" action="indexLogeado.jsp">
            <p><input type="submit" value="Index Logeado"></p>
        </form>

        <%}%>
    </body>
</html>
