package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class homepage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/header.html");
    _jspx_dependants.add("/menu1.jsp");
    _jspx_dependants.add("/footer.html");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script type=\"text/javascript\" src=\"jquery-1.9.1.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("         function loginvalidate()\n");
      out.write("         {\n");
      out.write("           var id=document.loginform.username.value;\n");
      out.write("           var pass=document.loginform.password.value;\n");
      out.write("           $(\"#tempdiv\").load(\"login.jsp\",{\"userid\":id,\"password\":pass},function()\n");
      out.write("           {\n");
      out.write("           var status=document.getElementById(\"status\").value;\n");
      out.write("           if(status===\"false\")\n");
      out.write("           {\n");
      out.write("            document.loginform.username.value=\"\";\n");
      out.write("            document.loginform.password.value=\"\";\n");
      out.write("            document.getElementById(\"statusspan\").innerHTML=\"invalid login credentials\";\n");
      out.write("           }\n");
      out.write("           else\n");
      out.write("           if (status===\"true\")\n");
      out.write("           window.location.assign(\"mainpage.jsp\");\n");
      out.write("           else\n");
      out.write("           window.location.assign(\"mainpage.jsp\");\n");
      out.write("           });\n");
      out.write("           \n");
      out.write("         return false;\n");
      out.write("         }\n");
      out.write("         function loginvalidate_L()\n");
      out.write("         {\n");
      out.write("           var id=document.loginform_L.username.value;\n");
      out.write("           var pass=document.loginform_L.password.value;\n");
      out.write("           $(\"#tempdiv\").load(\"login_L.jsp\",{\"userid\":id,\"password\":pass},function()\n");
      out.write("           {\n");
      out.write("           var status=document.getElementById(\"status\").value;\n");
      out.write("           if(status===\"false\")\n");
      out.write("           {\n");
      out.write("            document.loginform_L.username.value=\"\";\n");
      out.write("            document.loginform_L.password.value=\"\";\n");
      out.write("            document.getElementById(\"statusspan_L\").innerHTML=\"invalid login credentials\";\n");
      out.write("           }\n");
      out.write("           else\n");
      out.write("           if (status===\"true\")\n");
      out.write("           window.location.assign(\"local_inch.jsp\");\n");
      out.write("           else\n");
      out.write("           window.location.assign(\"local_inch.jsp\");\n");
      out.write("           });\n");
      out.write("           \n");
      out.write("         return false;\n");
      out.write("         }\n");
      out.write("         </script>\n");
      out.write("        <style>\n");
      out.write("        table{\n");
      out.write("            width: 100%;\n");
      out.write("            min-height: 640px;\n");
      out.write("            border-style: solid;\n");
      out.write("            border-width: 2px;\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        div#slider \n");
      out.write("            { \n");
      out.write("                overflow: hidden; \n");
      out.write("            }\n");
      out.write("            div#slider figure img \n");
      out.write("            { \n");
      out.write("                width: 20%; \n");
      out.write("                float: left; \n");
      out.write("            }\n");
      out.write("            div#slider figure \n");
      out.write("            { \n");
      out.write("                position: relative;\n");
      out.write("                width: 500%;\n");
      out.write("                margin: 0;\n");
      out.write("                left: 0;\n");
      out.write("                text-align: left;\n");
      out.write("                font-size: 0;\n");
      out.write("                animation: 20s slidy infinite; \n");
      out.write("            }\n");
      out.write("        @keyframes slidy \n");
      out.write("            {\n");
      out.write("                0% { left: 0%; }\n");
      out.write("                20% { left: 0%; }\n");
      out.write("                25% { left: -100%; }\n");
      out.write("                45% { left: -100%; }\n");
      out.write("                50% { left: -200%; }\n");
      out.write("                70% { left: -200%; }\n");
      out.write("                75% { left: -300%; }\n");
      out.write("                95% { left: -300%; }\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("    </style>\n");
      out.write("    </head>    \n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        ");

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

    
      out.write("\n");
      out.write("        <table>\n");
      out.write("            <tr><td>");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <style>\n");
      out.write("            #head\n");
      out.write("            {\n");
      out.write("                height: 103px;\n");
      out.write("                background-image: url(\"images/book-and-pen1.png\");\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: 1500px 120px;\n");
      out.write("                align-content: center;\n");
      out.write("                border-radius: 4px;\n");
      out.write("            }\n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"head\"><div style=\"font-family: 'Abel', sans-serif;\"></div></div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("</td></tr>\n");
      out.write("            <tr><td>");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <script type=\"text/javascript\" src=\"jquery-1.9.1.min.js\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            #sm\n");
      out.write("            {\n");
      out.write("                background-color: #FF4C3B;\n");
      out.write("                text-align: left;\n");
      out.write("                line-height: 22px;\n");
      out.write("                border-radius: 4px;\n");
      out.write("            }\n");
      out.write("            .button \n");
      out.write("            {\n");
      out.write("                font-family:\"Segoe UI\",Arial,sans-serif;\n");
      out.write("                background-color: #FF4C3B; \n");
      out.write("                border: none;\n");
      out.write("                color: whitesmoke;\n");
      out.write("                padding: 10px;\n");
      out.write("                width: 100px;\n");
      out.write("                text-align: center;\n");
      out.write("                text-decoration: none;\n");
      out.write("                display: inline-block;\n");
      out.write("                font-size: 17px;\n");
      out.write("                border-radius: 2px;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            .button1:hover\n");
      out.write("            {\n");
      out.write("                background-color: #000000;\n");
      out.write("                color: whitesmoke;\n");
      out.write("                box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);\n");
      out.write("            }\n");
      out.write("            .button span \n");
      out.write("            {\n");
      out.write("                cursor: pointer;\n");
      out.write("                display: inline-block;\n");
      out.write("                position: relative;\n");
      out.write("                transition: 0.4s;\n");
      out.write("            }\n");
      out.write("            .button span:after \n");
      out.write("            {\n");
      out.write("                content:'>';\n");
      out.write("                position: absolute;\n");
      out.write("                opacity: 0;\n");
      out.write("                top: 0;\n");
      out.write("                right: -20px;\n");
      out.write("                transition: 0.4s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .button:hover span \n");
      out.write("            {\n");
      out.write("                padding-right: 25px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .button:hover span:after \n");
      out.write("            {\n");
      out.write("                opacity: 1;\n");
      out.write("                right: 0;\n");
      out.write("            }\n");
      out.write("            .dropdown \n");
      out.write("            {\n");
      out.write("                position: relative;\n");
      out.write("                display: inline-block;\n");
      out.write("            }\n");
      out.write("            .dropdown-content \n");
      out.write("            {\n");
      out.write("                display: none;\n");
      out.write("                position: absolute;\n");
      out.write("                background-color: #cce6ff;\n");
      out.write("                min-width: 160px;\n");
      out.write("                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("                z-index: 1;\n");
      out.write("            }\n");
      out.write("            .lgn\n");
      out.write("            {\n");
      out.write("                position: absolute;\n");
      out.write("                right: 0;\n");
      out.write("                background-color: #cce6ff;\n");
      out.write("                width: 300px;\n");
      out.write("                padding: 30px;\n");
      out.write("                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("                z-index: 1;\n");
      out.write("                text-align:center; \n");
      out.write("            }\n");
      out.write("            .dropdown:hover .dropdown-content \n");
      out.write("            {\n");
      out.write("                display: block;\n");
      out.write("            }\n");
      out.write("            .dropbtn \n");
      out.write("            {\n");
      out.write("                background-color: #FF4C3B;\n");
      out.write("                color: white;\n");
      out.write("                padding: 10px;\n");
      out.write("                font-size: 17px;\n");
      out.write("                border: none;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            .dropdown-content a \n");
      out.write("            {\n");
      out.write("                color: black;\n");
      out.write("                padding: 12px 16px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                display: block;\n");
      out.write("            }           \n");
      out.write("            .dropdown-content a:hover \n");
      out.write("            {\n");
      out.write("                background-color: #f1f1f1\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"\">\n");
      out.write("         <div id=\"sm\">\n");
      out.write("            <button class=\"button button1\" onclick='{$(\"#mainpage\").load(\"mainhome.html\");}'><span>Home</span></button> \n");
      out.write("            <div class=\"dropdown\">\n");
      out.write("                <button class=\"button button1 dropbtn\"><span>About</span></button>\n");
      out.write("                <div class=\"dropdown-content\">\n");
      out.write("                    <a onclick='{$(\"#mainpage\").load(\"brief.html\");}'>brief</a>\n");
      out.write("                    <a onclick='{$(\"#mainpage\").load(\"vision.html\");}'>vision</a>\n");
      out.write("                    <a onclick='{$(\"#mainpage\").load(\"achivments.html\");}'>achievements</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"button button1\"><a onclick='{$(\"#mainpage\").load(\"governancemain.jsp\");}' style=\" color: white\"><span>Governance</span></a></div>\n");
      out.write("            <div class=\"dropdown\" style=\" position: absolute\">\n");
      out.write("                <button class=\"button button1 dropbtn\" style=\" width: 200px\"><span>Local incharge</span></button>\n");
      out.write("                <div class=\"dropdown-content lgn\">\n");
      out.write("                        <form method=\"post\" name=\"loginform_L\" onsubmit=\"return loginvalidate_L()\">\n");
      out.write("                            username: <input type=\"text\" name=\"username\" required=\"\" onfocus='document.getElementById(\"statusspan_L\").innerHTML=\"\";'><br>\n");
      out.write("                            password: <input type=\"password\" name=\"password\" required=\"\" onfocus='document.getElementById(\"statusspan_L\").innerHTML=\"\";'><br><br>\n");
      out.write("                            <input type=\"submit\" name=\"submit\"><br>\n");
      out.write("                        <span id=\"statusspan_L\" style=\"color:red;\"></span>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"dropdown\" style=\"float:right\" align=\"center\">\n");
      out.write("             ");

                try
                {
                    String st=(String) session.getAttribute("username");
                    if(st.equals("guest"))
                    {
                     out.println("<button class=\"button button1 dropbtn\"><span>Login</span></button>"
                                 +"<div class=\"dropdown-content lgn\">"
                                 +" <form method=\"post\" onsubmit=\"return loginvalidate()\" name=\"loginform\">"
                                 +" user id: <input type=\"text\" name=\"username\" required onfocus='document.getElementById(\"statusspan\").innerHTML=\"\";'><br>"
                                 +" password: <input type=\"password\" name=\"password\" required onfocus='document.getElementById(\"statusspan\").innerHTML=\"\";'><br>"
                                 +"<input type=\"submit\" name=\"submit\"><br>"
                                 +"  <span id=\"statusspan\" style=\"color:red;\"></span>"
                                +" </form></div>");    
                    }
                    else
                    {
                        out.println("<button class=\"button button1 dropbtn\" style=\"min-width:100px;\"><span>");    
                        out.println(st);
                        out.println("</span></button><div class=\"dropdown-content\"><a href=\"logout.jsp\">Logout</a></div>");
                    
                    }    
                }
                catch(Exception e)
                {
                }    
             
      out.write("   \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("</td></tr>\n");
      out.write("            <tr>\n");
      out.write("                <td style=\" background-color: black\">\n");
      out.write("                    <a onclick='{$(\"#mainpage\").load(\"govinfo.jsp\");}' style=\" color: white\"><marquee>Whats New ?</marquee></a>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("                    <tr><td style=\"height: 100%\">\n");
      out.write("                            <div id='mainpage'>\n");
      out.write("                <div id=\"slider\" >\n");
      out.write("                        <figure>\n");
      out.write("                            <img src=\"images/Ind.jpg\" width=100% height=\"450px\">\n");
      out.write("                            <img src=\"images/book.jpg\" width=100% height=\"450px\">\n");
      out.write("                            <img src=\"images/digital-gov.jpg\" width=100% height=\"450px\">\n");
      out.write("                            <img src=\"images/your.jpg\" width=100% height=\"450px\">\n");
      out.write("                        </figure>\n");
      out.write("                    </div>\n");
      out.write("                            </div>\n");
      out.write("                </td></tr>\n");
      out.write("            <tr><td>");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <style>\n");
      out.write("            div\n");
      out.write("            {\n");
      out.write("                margin: 0;\n");
      out.write("            }\n");
      out.write("            p\n");
      out.write("            {\n");
      out.write("                margin: 0;\n");
      out.write("            }\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("                margin: 0;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("            <p style=\"background-color: #3A3A3A;padding: 8px\" >@ of manikanta</p>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("</td></tr>\n");
      out.write("        </table>\n");
      out.write("        <div id=\"tempdiv\"></div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
