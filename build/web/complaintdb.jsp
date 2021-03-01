<%@page import="java.sql.*" %>
        <%!
            String userid;
            String type;
            String pincode;
            String street;
            String complaint;
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;
        %>
        <%
            userid=(String) session.getAttribute("Id");
            type=request.getParameter("type");
            pincode=request.getParameter("pincodetxt");
            street=request.getParameter("streettxt");
            complaint=request.getParameter("compltxt");
            try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                st=con.createStatement();
                st.executeUpdate("insert into complaints values ('"+userid+"','"+type+"','"+pincode+"','"+street+"','"+complaint+"','unseen')");
                st.close();
                con.close();
            }
            catch (Exception e)
            {
                System.out.println(e);
            }
        %>