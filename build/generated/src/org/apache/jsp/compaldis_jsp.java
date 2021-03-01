package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import oracle.jdbc.driver.*;

public final class compaldis_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    Connection con;
    Statement st;
    ResultSet rs;
    String id;

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      out.write('\n');

    id=(String)session.getAttribute("Id");
    try
    {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection("jdbc:thin:@//localhost:1522:xe/","system","mani");
    st=con.createStatement();
    rs=st.executeQuery("select type,complaint from complaints where id='"+id+"' ");
    
      out.write("\n");
      out.write("        <table style=\"border: 1px solid black;\" width=\"100%\">\n");
      out.write("            <tr bgcolor=\"#3A3A3A\">\n");
      out.write("                <th style=\"padding: 10px;color: whitesmoke;\">Type</th>\n");
      out.write("                <th style=\"padding: 10px;color: whitesmoke;\">Complaint</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

                while(rs.next())
                {
                    
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td style=\"padding: 10px\">");
out.println(rs.getString(2));
      out.write("</td>\n");
      out.write("                        <td style=\"padding: 10px\">");
out.println(rs.getString(5));
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");
}
con.close();

      out.write("\n");
      out.write("        </table>\n");

    }
catch (Exception e)
{
System.out.println(e);
}

      out.write('\n');
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
