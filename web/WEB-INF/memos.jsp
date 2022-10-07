<%-- 
    Document   : memos
    Created on : 6 oct. 2022, 15:29:00
    Author     : joelg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="menu.jsp" %>
        <div class="container">
            <h1  class="text-info">Liste de mes memos !</h1>
            <br>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Contenu</th>
                    <th>Date de creation</th>
                    <th>Créateur</th>
                </tr>
                <c:forEach items="${notes}" var="m">
                    <tr>
                        <td>${m.id}</td>
                        <td>${m.contenu}</td>
                        <td>${m.dateDeCreation}</td>
                        <td>${m.createur.prenom} ${m.createur.nom}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
