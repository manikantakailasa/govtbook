<%@page import="java.sql.*" %>
        <%!
            String userid;
            String circle;
            String dob;
            String sex;
            String childname;
            String nofather;
            String nomother;
            String birthplace;
            String pob;
            String telnum;
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;
        %>
        <%
            userid=(String) session.getAttribute("Id");
            circle=request.getParameter("circle");
            dob=request.getParameter("dob");
            sex=request.getParameter("sex");
            childname=request.getParameter("childname");
            nofather=request.getParameter("nofather");
            nomother=request.getParameter("nomother");
            birthplace=request.getParameter("birthplace");
            pob=request.getParameter("pob");
            telnum=request.getParameter("telnum");
            try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                st=con.createStatement();
                st.executeUpdate("delete from dobapplication where id='"+userid+"'");
                st.executeQuery("insert into dobapplication values ('"+userid+"','"+circle+"','"+dob+"','"+sex+"','"+childname+"','"+nofather+"','"+nomother+"','"+birthplace+"','"+pob+"','"+telnum+"','unseen')");
                st.close();
                con.close();
            }
            catch (Exception e)
            {
                System.out.println(e);
            }
        %>