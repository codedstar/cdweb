<%-- 
    Document   : insert_genre
    Created on : May 17, 2023, 9:30:19 AM
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
                text-align: left;
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
                width: 60%;
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
                width: 60%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                margin:6px 0 16px 0;
                background-color: #222;
                color: #fff;
            }
            .label{
                margin: 1rem 0;
            }
            .container{
                width: 100%;
                align-self: center;
            }
        </style>

        <title>JSP Page</title>
    </head>
    <body>

        <main class="main">

                <h1 class="header_text">CD Genre Form</h1>
                <!--The form action="holds the server name here"-->
                <div class="container">
                    <form action="Cdmenuservlet" method="post" class="form">
                        <label class="label">Genre Name</label>
                        <input type="text" name="name"/>
                        <input type="Submit" value="Save" name="insert"  class="link_button"/>
                    </form>
                </div>
      
                
        </main>
    </body>
</html>
