<%@page import="java.sql.*"%>
<%@page import="oracle.jdbc.driver.*"%>
<%!
    Connection con;
    Statement st;
    ResultSet rs;
    String id;
%>
<%
    id=(String)session.getAttribute("Id");
    try
    {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
    st=con.createStatement();
    rs=st.executeQuery("select * from complaints where id='"+id+"' ");
    %>
    <style>
            .nth:nth-child(even) 
            {
                background-color: #f2f2f2
            }
        </style>
        <table style="border: 1px solid black;" width="100%">
            <tr bgcolor="#3A3A3A">
                <th style="padding: 10px;color: whitesmoke;">id</th>
                <th style="padding: 10px;color: whitesmoke;">type</th>
                <th style="padding: 10px;color: whitesmoke;">complaint</th>
                <th style="padding: 10px;color: whitesmoke;">status</th>
            </tr>
            <%
                while(rs.next())
                {
                    %>
                    <tr class="nth" style="cursor: pointer">
                        <td style="padding: 10px"><%out.println(rs.getString(1));%></td>
                        <td style="padding: 10px"><%out.println(rs.getString(2));%></td>
                        <td style="padding: 10px"><%out.println(rs.getString(5));%></td>
                        <td style="padding: 10px"><%out.println(rs.getString(6));%></td>
                    </tr>
                    <%}
con.close();
%>
        </table>
        <%
    }
    catch (Exception e)
    {
        System.out.println(e);
    }
    %>