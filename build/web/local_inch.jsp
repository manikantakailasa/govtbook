<%-- 
    Document   : local_inch
    Created on : Aug 12, 2016, 7:09:11 PM
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table
            {
                width: 100%;
            }
            body
            {
                margin: 0px;
            }
            .b1
            {
                background-image: url("images/opacity.png");
                background-repeat:  no-repeat;
                background-size:1090px 818px;
            }
            </style>
            <script>
                function compL(i)
            {
                var id=document.getElementById(i).value;
                var x=id.split(" ");
                var id2=x[0];
                var cmp=x[1];
                $("#tempdiv").load("status_L.jsp",{"id2":id2,"cmp":cmp});
                alert("data has been seen");
                
            }
            </script>
    </head>
    
    <body>
        <table style="min-height: 640px">
            <tr>
                <td colspan="2"><%@include file="header.html" %></td>
            </tr>
            <tr>
                <td colspan="2"><%@include file="menu3.jsp" %></td>
            </tr>
            <tr class="b1">
                    <td style="width: 20%;height: 100%;vertical-align: top">
                    <div  id="navigation_L"></div> 
                </td>
                <td style="width: 80%">
                    <div id="mainpage1_L"></div> 
                </td>
            </tr>
            <tr>
                <td colspan="2"><%@include file="footer.html" %></td>
            </tr>
        </table>
            <div id="tempdiv"></div>
    </body>
</html>
