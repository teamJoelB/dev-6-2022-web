<%-- 
    Document   : home
    Created on : 6 oct. 2022, 12:34:07
    Author     : joelg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <div class ="container"><h1>Hello ${user.prenom}</h1></div>
    </body>
</html>
