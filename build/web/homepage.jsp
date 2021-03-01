<%-- 
    Document   : homepage
    Created on : Jul 29, 2016, 11:15:02 AM
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="jquery-1.9.1.min.js"></script>
        <script type="text/javascript">
         function loginvalidate()
         {
           var id=document.loginform.username.value;
           var pass=document.loginform.password.value;
           $("#tempdiv").load("login.jsp",{"userid":id,"password":pass},function()
           {
           var status=document.getElementById("status").value;
           if(status==="false")
           {
            document.loginform.username.value="";
            document.loginform.password.value="";
            document.getElementById("statusspan").innerHTML="invalid login credentials";
           }
           else
           if (status==="true")
           window.location.assign("mainpage.jsp");
           else
           window.location.assign("mainpage.jsp");
           });
           
         return false;
         }
         function loginvalidate_L()
         {
           var id=document.loginform_L.username.value;
           var pass=document.loginform_L.password.value;
           $("#tempdiv").load("login_L.jsp",{"userid":id,"password":pass},function()
           {
           var status=document.getElementById("status").value;
           if(status==="false")
           {
            document.loginform_L.username.value="";
            document.loginform_L.password.value="";
            document.getElementById("statusspan_L").innerHTML="invalid login credentials";
           }
           else
           if (status==="true")
           window.location.assign("local_inch.jsp");
           else
           window.location.assign("local_inch.jsp");
           });
           
         return false;
         }
         </script>
        <style>
        table{
            width: 100%;
            min-height: 640px;
            border-style: solid;
            border-width: 2px;
            
        }
        div#slider 
            { 
                overflow: hidden; 
            }
            div#slider figure img 
            { 
                width: 20%; 
                float: left; 
            }
            div#slider figure 
            { 
                position: relative;
                width: 500%;
                margin: 0;
                left: 0;
                text-align: left;
                font-size: 0;
                animation: 20s slidy infinite; 
            }
        @keyframes slidy 
            {
                0% { left: 0%; }
                20% { left: 0%; }
                25% { left: -100%; }
                45% { left: -100%; }
                50% { left: -200%; }
                70% { left: -200%; }
                75% { left: -300%; }
                95% { left: -300%; }
            }
            
    </style>
    </head>    
    
    <body>
        <%
      String s="guest"; 
      try
      {
       s=(String) session.getAttribute("username");
       if(s.equals("guest"))
       {}    
      }
      catch(Exception e)
      {
        session.setAttribute("username","guest");
      }  

    %>
        <table>
            <tr><td><%@include file="header.html" %></td></tr>
            <tr><td><%@include file="menu1.jsp" %></td></tr>
            <tr>
                <td style=" background-color: black">
                    <a onclick='{$("#mainpage").load("govinfo.jsp");}' style=" color: white"><marquee>Whats New ?</marquee></a>
                </td>
            </tr>
                    <tr><td style="height: 100%">
                            <div id='mainpage'>
                <div id="slider" >
                        <figure>
                            <img src="images/Ind.jpg" width=100% height="450px">
                            <img src="images/book.jpg" width=100% height="450px">
                            <img src="images/digital-gov.jpg" width=100% height="450px">
                            <img src="images/your.jpg" width=100% height="450px">
                        </figure>
                    </div>
                            </div>
                </td></tr>
            <tr><td><%@include file="footer.html" %></td></tr>
        </table>
        <div id="tempdiv"></div>
    </body>
</html>
