<%@page import="java.sql.*" %>
        <%!
            String userid;
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;
        %>
        <%
            try
            {
                userid=(String)session.getAttribute("Id");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                st=con.createStatement();
                rs=st.executeQuery("select * from dobapplication where id='"+userid+"'");
                if (rs.next())
                {
                    out.println("<form name=\"birth_editform\" onsubmit=\"return birthapp_edit()\">"
            +"<table>"
                +"<tr>"
                   +" <td>Circle/Locality:</td>"
                   +" <td><input type=\"text\" name=\"circle\" required value=\""+rs.getString(2)+"\"> </td>"
               +" </tr>"
               +" <tr>"
                   +" <td>Date Of Birth:</td>"
                   +" <td><input type=\"date\" name=\"dob\" required value=\""+rs.getString(3)+"\"></td>"
               +" </tr>"
              +"  <tr>"
                  +"  <td>sex:</td>"
                    +"<td><select id=\"sextxt_edit\" required>"
                    +"        <option value=\"\">select</option>"
                       +" <option value=\"male\" >male</option>"
                       +" <option value=\"female\">female</option>"
               +" </select></td>"
               +" </tr>"
                +"<tr>"
                   +" <td>Child Name:</td>"
                  +"  <td><input type=\"text\" name=\"childname\" value=\""+rs.getString(5)+"\"></td>"
               +" </tr>"
               +" <tr>"
                  +"  <td>Name of the Father:</td>"
                   +" <td><input type=\"text\" name=\"nofather\" required value=\""+rs.getString(6)+"\"></td>"
               +" </tr>"
                +"<tr>"
                  +"  <td>Name of the Mother:</td>"
                  +"  <td><input type=\"text\" name=\"nomother\" required value=\""+rs.getString(7)+"\"></td>"
                +"</tr>"
               +" <tr>"
                 +"   <td>Place of Birth:</td>"
                   +" <td><select required id=\"birthplace_edit\">"
                   +"                 <option value=\"\">select</option>"
                   +"                 <option>Hospital/Institution</option>"
                   +"                 <option>House Address</option>"
                   +"                 <option>Other Place</option>"
                   +"                "
                   +"     </select></td>"
                +"</tr>"
               +" <tr>"
                 +"   <td colspan=\"2\" align=\"center\"><input type=\"text\" name=\"pob\" value=\""+rs.getString(9)+"\"></td>"
               +" </tr>"
                +"<tr>"
                  +"  <td>"
                  +"      Telephone Number:"
                  +"  </td>"
                  +"  <td>"
                  +"      <input type=\"text\" name=\"telnum\" required value=\""+rs.getString(10)+"\">"
                  +"  </td>"
                +"</tr>"
                +"<tr>"
                  +"  <td colspan=\"2\">"
                  +"      <b>NOTE:</b>Birth Certificate will be subjected to entry found in Birth Record - C and DMA/Panchayats"
                  +"  </td>"
                +"</tr>"
                +"<tr align=\"center\">"
                +"    <td style=\"padding-top: 20px\">"
                +"        <input type=\"submit\" value=\"submit\">"
                +"    </td>"
                +"    <td align=\"left\" style=\"padding-top: 20px\">"
                +"        <input type=\"reset\" value=\"reset\">"
                +"    </td>"
                +"</tr>"
            +"</table>"
        +"</form>");
                    
                   
                }
                st.close();
                con.close();
            }
            catch (Exception e)
            {
                System.out.println(e);
            }
            %>