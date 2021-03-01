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
                rs=st.executeQuery("select * from llicense where id='"+userid+"'");
                if (rs.next())
                {
                    out.println("<form name=\"licenseappform_edit\" onsubmit=\"return licenseapp_edit()\">"
            +"<table>"
               +" <tr> <td>displaynameonlicense:</td> <td><input type=\"text\" name=\"displaynameonlicense\" value=\""+rs.getString(2)+"\" required=\"\"></td> </tr>"
+"                <tr> <td>firstname:</td> <td><input type=\"text\" name=\"firstname\" value=\""+rs.getString(3)+"\" required=\"\"></td> </tr>"
  +"              <tr> <td>surname:</td> <td><input type=\"text\" name=\"surname\" value=\""+rs.getString(4)+"\" required=\"\"></td> </tr>"
  +"              <tr> <td>Date Of Birth:</td> <td><input type=\"date\" name=\"dateofbirth\" value=\""+rs.getString(5)+"\" required=\"\"></td> </tr>"
  +"              <tr> <td>gender:</td> <td><select id=\"gendertxt_edit\" value=\""+rs.getString(6)+"\"> <option value=\"\">select</option> <option value=\"male\">male</option> <option value=\"female\">female</option> </select></td> </tr>"
  +"              <tr> <td>fathersname:</td> <td><input type=\"text\" name=\"fathersname\" value=\""+rs.getString(7)+"\" required=\"\"></td> </tr>"
  +"              <tr> <td>electoralnumber:</td> <td><input type=\"text\" name=\"electoralnumber\" value=\""+rs.getString(8)+"\" required=\"\"></td> </tr>"
  +"              <tr> <td>pancardnumber:</td> <td><input type=\"text\" name=\"pancardnumber\" value=\""+rs.getString(9)+"\" required=\"\"></td> </tr>"
  +"              <tr> <td>bloodgroup:</td> <td><input type=\"text\" name=\"bloodgroup\" value=\""+rs.getString(10)+"\"></td> </tr>"
  +"              <tr> <td>nationality:</td> <td><input type=\"text\" name=\"nationality\" value=\""+rs.getString(11)+"\" required=\"\"></td> </tr>"
  +"              <tr> <td>height(incms):</td> <td><input type=\"text\" name=\"height_incms\" value=\""+rs.getString(12)+"\" required=\"\"></td> </tr>"
  +"              <tr> <td>qualification:</td> <td><input type=\"text\" name=\"qualification\" value=\""+rs.getString(13)+"\" required=\"\"></td> </tr>"
  +"              <tr> <td>identificationmarks1:</td> <td><input type=\"text\" name=\"identificationmarks1\" value=\""+rs.getString(14)+"\" required=\"\"></td> </tr>"
  +"              <tr> <td>identificationmarks2:</td> <td><input type=\"text\" name=\"identificationmarks2\" value=\""+rs.getString(15)+"\" required=\"\"></td> </tr>"
  +"              <tr> <td>address:</td> <td><input type=\"text\" name=\"address\" value=\""+rs.getString(16)+"\" required=\"\"></td> </tr>"
  +"              <tr> <td>district:</td> <td><input type=\"text\" name=\"district\" value=\""+rs.getString(17)+"\" required=\"\"></td> </tr>"
  +"              <tr> <td>mandal:</td> <td><input type=\"text\" name=\"mandal\" value=\""+rs.getString(18)+"\" required=\"\"></td> </tr>"
  +"              <tr> <td>pincode:</td> <td><input type=\"text\" name=\"pincode\" value=\""+rs.getString(19)+"\" required=\"\"></td> </tr>"
    +"            <tr> <td>mobilenumber:</td> <td><input type=\"text\" name=\"mobilenumber\" value=\""+rs.getString(20)+"\" required=\"\"></td> </tr>"
    +"            <tr> <td>emailid:</td> <td><input type=\"text\" name=\"emailid\" value=\""+rs.getString(21)+"\" required=\"\"></td> </tr>"
    +"            <tr> <td>licensecategory:</td> <td><input type=\"text\" name=\"licensecategory\" value=\""+rs.getString(22)+"\" required=\"\"></td></tr>"
    +"            <tr> <td>licenseclassofvehicle:</td> <td><input type=\"text\" name=\"licenseclassofvehicle\" value=\""+rs.getString(23)+"\" required=\"\"></td> </tr>"
    +"            <tr> <tr align=\"center\"> <td style=\"padding-top: 20px\"> <input type=\"submit\" value=\"submit\"> </td> <td align='left' style=\"padding-top: 20px\"> <input type=\"reset\" value=\"reset\"> </td> </tr>"
    +"        </table>"
    +"    </form>");
                }
                st.close();
                con.close();
            }
             catch (Exception e)
             {
                 System.out.println(e);
             }
            %>