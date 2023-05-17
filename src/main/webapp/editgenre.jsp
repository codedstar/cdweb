<%-- 
    Document   : editgenre
    Created on : May 17, 2023, 10:04:05 AM
    Author     : kwaku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
            .btn_wrapper{
                display: flex;
                width: 20%;
                gap: 0.5rem;
            }
            .form{
                margin-top: 1.5rem;
            }
            input[type=text] {
                display: block;
                width: 60%; /* Full width */
                padding: 12px; /* Some padding */
                border: 1px solid #ccc; /* Gray border */
                border-radius: 4px; /* Rounded borders */
                margin-top: 6px; /* Add a top margin */
                margin-bottom: 16px; /* Bottom margin */
                 background-color: #222;
                 color: #fff;
            }
        </style>

        <title>Edit Page</title>
    </head>
    <body>
        <main class="main">
            <h1 class="header_text">Edit <%= request.getParameter("name") %></h1>

            <table id="table">
                <tr class="header">
                    <th class="row_head1">Genre ID</th>
                    <th class="row_head2">Genre Name</th>
                </tr>
                
                <tr>
                    <td><%= request.getParameter("id") %></td>
                    <td><%= request.getParameter("name") %></td>

                </tr>
            </table>

            <div class="container">
                <form action="Cdmenuservlet" method="post" class="form">
                     <label class="label">New Genre Name</label>                
                    <input type="text" name="edit_genrename" />
                    <input type="hidden" name="edit_genreId" value="<%= request.getParameter("id") %>"/>
                    <div class="btn_wrapper">
                        <input type="submit" value="Save" name="edit" class="link_button"/>
                        <input type="submit" value="Cancel" class="link_button"/>
                    </div>
                </form>
            </div>

        </main>
    </body>
</html>
