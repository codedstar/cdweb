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

        <!--<link rel="stylesheet" href="styles/styles.css"/>-->
        <style>
            *{
                margin:0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                background-color: #111;
                /*background-color: #fafafa;*/
                font-family: sans-serif;
                height: 100%;
                color: #fff;
                
                /*background: red;*/
            }
            a{
                text-decoration: none;
                color: #fff;
            }

            .main{
                max-width: 80%;
                margin: 0 auto;
                display: flex;
                flex-direction: column;
                align-content: center;
                justify-content: center;
                /*background: green;*/
            }
            .header_text{
                font-size: 2rem;
                font-weight: bold;
                text-align: center;
                margin: 1rem 0 0.6rem 0;
            }
            .sub_header_text{
                font-size: 0.9rem;
                font-weight: 600;
                text-align: center;
                margin-bottom: 1rem;
            }
            .data_section{
                padding: 1rem;
                display: flex;
                justify-content: center;
                gap: 1rem;
                /*background-color: pink;*/
            }
            .left-col{
                flex:2;
                /*background-color: gray;*/
            }
            .right-col{
                flex:1;
                display:flex;
                flex-direction: column;
                align-items: center;
                border-radius: 4px;
                background-color: #222;
                /*background-color: #eaeaea;*/
            }
            .right_header_text{
                margin-top: 3rem;
                margin-bottom: 1rem;
                color: #fafafa;
                font-size: 2rem;
                font-weight: bold;
                text-align: center;
            }
            table {
                border-collapse: collapse;
                width: 100%;
                /*border: 1px solid #ddd;*/
                font-size: 1rem;
                background-color: #222;
            }
            table, th, td {
                border: 1px solid #555;
                text-align: left;
                padding: 12px;
            }
            table tr {
                border-bottom: 1px solid red;
            }

            table tr.header {
                background-color: teal;
                /*background-color: #f1f1f1;*/
            }
            .row_head1{
                width:20%;
            }
            .row_head2{
                width:50%;
            }
            .row_head3{
                width:30%;
            }
/*            table tr:hover {
                background-color: pink;
                background-color: #f1f1f1;
            }*/
/*            tr:nth-child(even) {
                background-color: #f2f2f2;
            }*/
            .link_button{
                display: inline-block;
                width: 80%;
                border: none;
                border-radius: 4px;
                color: #ffffff;
                text-decoration: none;
                font-weight: bold;
                font-size: 1.5rem;
                background-color: teal;
                padding: 14px 28px;
                font-size: 16px;
                cursor: pointer;
                text-align: center;

            }
            .msg{
                font-size: 1rem;
                margin: 1rem 0;
            }
        </style>

    </head>
    <body>
        <main class="main">
            <h1 class="header_text">CD Collection Exercise</h1>
            <h2 class="sub_header_text"> The list has ${genreList.size()} elements. </h2>

            <div class="data_section">
                <div class="left-col">
                    <table id="table">
                        <tr class="header">
                            <th class="row_head1">Genre ID</th>
                            <th class="row_head2">Genre Name</th>
                            <th colspan="2" class="row_head3">Actions</th>
                        </tr>


                        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                        <c:forEach var="genre" items="${genreList}">
                            <tr>
                                <td>${genre.getID()}</td>
                                <td>${genre.getName()}</td>
                                <td><a href="editgenre.jsp?id=${genre.getID()}&name=${genre.getName()}">Edit</a></td>
                                <td><a href="deletegenre.jsp?id=${genre.getID()}&name=${genre.getName()}">Delete</a></td>

                            </tr>
                        </c:forEach>

                    </table>
                </div>

                <div class="right-col">
                    <h2 class="right_header_text"> The list has ${genreList.size()} elements. </h2>
                    <p class="msg">  ${msg} </p>

                    <a href="insert_genre.jsp" class="link_button">Insert Genre</a>
                </div>
            </div>

        </main>
    </body>
</html>
