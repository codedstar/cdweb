<%-- 
    Document   : cdmenu
    Created on : 16 May 2023, 9:16:52 am
    Author     : abdulmac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CD Collection</title>
        <style>
            table, th, td {
              border: 1px solid;
            }
        </style>
    </head>
    <body>
        <h1>CD Collection Exercise</h1>
        <h2> The list has ${genreList.size()} elements. </h2>
        
        <table>
            <tr>
              <th>Genre ID</th>
              <th>Genre Name</th>
            </tr>
            
            
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:forEach var="genre" items="${genreList}">
                <tr>
                    <td>${genre.getID()}</td>
                    <td>${genre.getName()}</td>
                </tr>
            </c:forEach>
            
        </table>
            
         <h1>CD Genre Form</h1>
        <!--The form action="holds the server name here"-->
        <form action="Cdmenuservlet" method="post">
            Genre Name
            <input type="text" name="name"/>
            <input type="submit" value="Save"/>
        </form>
        
        <h2>  ${msg} </h2>
        
        <h2> The list has ${genreList.size()} elements. </h2>

    </body>
</html>
