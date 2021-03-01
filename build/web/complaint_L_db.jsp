<%@page import="java.sql.*" %>
        <%!
            String userid;
            String loc;
            int i=0;
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;
        %>
        <%
            userid=(String) session.getAttribute("Id");
            try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                st=con.createStatement();
                rs=st.executeQuery("select location from local_inch where id='"+userid+"'");
                rs.next();
                loc=rs.getString(1);
                rs=st.executeQuery("select * from complaints inner join govlog on complaints.id=govlog.id and complaints.status='unseen' and govlog.area='"+loc+"'");
                %>
                <style>
                    .nth:nth-child(odd) 
            {
                background-color: #f2f2f2
            }
                </style>
                <table style="border: 1px solid black;">
                    <tr bgcolor="#3A3A3A" ><td style="padding: 10px;color: whitesmoke;">Id</td><td style="padding: 10px;color: whitesmoke;">type</td><td style="padding: 10px;color: whitesmoke;">status</td><td style="padding: 10px;color: whitesmoke;">submits</td></tr>
                    <%
                        while (rs.next())
                        {i++;
                            %>
                            <tr class="nth" onclick="return compL(<%=i%>)"><td><%out.println(rs.getString(1));%></td><td><%out.println(rs.getString(2));%></td><td><%out.println(rs.getString(6));%></td><td>Submit<%out.println("<input type=\"hidden\" id=\""+i+"\" value='"+rs.getString(1)+" "+rs.getString(5)+"'");%></td></tr>
                            
                            <%
                        }
                        %>
                </table>
                <%
            }
            catch (Exception e)
            {
                System.out.println(e);
            }
            %>