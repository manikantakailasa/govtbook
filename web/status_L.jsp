<%@page import="java.sql.*" %>
        <%!
            String userid;
            String cmp;
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;
        %>
        <%
            userid=request.getParameter("id2");
            cmp=request.getParameter("cmp");
            System.out.println(userid+cmp);
            try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                st=con.createStatement();
                st.executeUpdate("update complaints set status='seen' where id='"+userid+"' and complaint='"+cmp+"'");
            }
            catch (Exception e)
            {
                System.out.println(e);
            }
            %>