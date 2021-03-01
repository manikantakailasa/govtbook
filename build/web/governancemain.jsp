<%-- 
    Document   : sample
    Created on : Aug 16, 2016, 3:08:04 PM
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="jquery-1.9.1.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .p1
            {
                color: #3A3A3A;
                font-size: 20px;
                font-family: 'Abel', sans-serif;
            }
        </style>
    </head>
    <body>
        <img onclick='$("#mainpage").load("governance.html");' src="images/governance1.jpg" alt="no image available" style=" width: 300px;height: 300px" />
        <img onclick='$("#mainpage").load("redfort.html");' src="images/governance2 .jpg" alt="no image available" style=" width: 300px;height: 300px" />
        <p class="p1">
            more governance information is to be designed in near future
        </p>
    </body>
</html>
