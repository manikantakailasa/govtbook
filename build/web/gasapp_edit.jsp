<%@page import="java.sql.*" %>
<%!
    String userid;
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
                rs=st.executeQuery("select * from gasapplication where id='"+userid+"'");
                if (rs.next())
                {
                    out.println("<form name=\"newgasform_edit\" onsubmit=\"return newgas_edit()\"><table style=\"width: 60%\">"
               +" <tr><td align=\"right\">LPG gas type:</td><td><input type=\"text\" name=\"LPGgastype\" value=\""+rs.getString(2)+"\" required></td></tr>"
                +"<tr><td align=\"right\">district of distributer:</td><td><input type=\"text\" name=\"districtofdistributer\" value=\""+rs.getString(3)+"\" required></td></tr>"
                +"<tr><td align=\"right\">location of distributer:</td><td><input type=\"text\" name=\"locationofdistributer\" value=\""+rs.getString(4)+"\" required></td></tr>"
                +"<tr><td align=\"right\">LPG distributer company:</td><td><input type=\"text\" name=\"LPGdistributercompany\" value=\""+rs.getString(5)+"\" required></td></tr>"
                +"<tr><td align=\"right\">distributer address:</td><td><input type='text' name='distributeraddress' value=\""+rs.getString(6)+"\" required></td></tr>"
                +"<tr><td align=\"right\">distributer pincode:</td><td><input type='text' name='distributerpincode' value=\""+rs.getString(7)+"\" required></td></tr>"
+"                <tr><td align=\"right\">distributer email id:</td><td><input type='text' name='distributeremailid' value=\""+rs.getString(8)+"\" required></td></tr>"
  +"              <tr><td align=\"right\">distributer contact number:</td><td><input type='text' name='distributercontactnumber' value=\""+rs.getString(9)+"\" required></td></tr>"
  +"              <tr><td align=\"right\">applicant name:</td><td><input type='text' name='applicantname' value=\""+rs.getString(10)+"\" required=\"\"></td></tr>"
    +"            <tr><td align=\"right\">applicant age:</td><td><input type='text' name='applicantage' value=\""+rs.getString(11)+"\" required=\"\"></td></tr>"
    +"            <tr><td align=\"right\">applicant profession:</td><td><input type='text' name='applicantprofession' value=\""+rs.getString(12)+"\" required=\"\"></td></tr>"
    +"            <tr><td align=\"right\">whether working couple :</td><td><input type='text' name='whetherworkingcouple' value=\""+rs.getString(13)+"\" required=\"\"></td></tr>"
      +"          <tr><td align=\"right\">number of family members:</td><td><input type='text' name='numberoffamilymembers' value=\""+rs.getString(14)+"\" required=\"\"></td></tr>"
      +"          <tr><td align=\"right\">income per year:</td><td><input type=\"text\" name=\"incomeperyear\" value=\""+rs.getString(15)+"\" required=\"\"></td></tr>"
      +"          <tr><td align=\"right\">whether used LPG earlier:</td><td><input type='text' name='whetherusedLPGearlier' value=\""+rs.getString(16)+"\" required=\"\"></td></tr>"
      +"          <tr><td align=\"right\">house number:</td><td><input type='text' name='housenumber' value=\""+rs.getString(17)+"\" required=\"\"></td></tr>"
        +"        <tr><td align=\"right\">landmark/locality/colony:</td><td><input type='text' name='landmark_locality_colony' value=\""+rs.getString(18)+"\" required=\"\"></td></tr>"
        +"        <tr><td align=\"right\">district:</td><td><input type=\"text\" name=\"district\" value=\""+rs.getString(19)+"\" required></td></tr>"
        +"        <tr><td align=\"right\">mandal:</td><td><input type=\"text\" name=\"mandal\" value=\""+rs.getString(20)+"\" required></td></tr>"
        +"        <tr><td align=\"right\">ward/village:</td><td><input type='text' name='ward_village' value=\""+rs.getString(21)+"\" required></td></tr>"
        +"        <tr><td align=\"right\">pincode:</td><td><input type='text' name='pincode' value=\""+rs.getString(22)+"\" required></td></tr>"
        +"        <tr><td align=\"right\">email id:</td><td><input type='text' name='emailid' value=\""+rs.getString(23)+"\" required></td></tr>"
       +"        <tr><td align=\"right\">informant name:</td><td><input type='text' name='informantname' value=\""+rs.getString(24)+"\" required></td></tr>"
         +"       <tr><td align=\"right\">relation with applicant:</td><td><input type='text' name='relationwithapplicant' value=\""+rs.getString(25)+"\" required></td></tr>"
         +"       <tr><td align=\"right\">informant mobile number:</td><td><input type='text' name='informantmobilenumber' value=\""+rs.getString(26)+"\" required></td></tr>"
         +"       <tr><td align=\"right\">proof document:</td><td><input type='text' name='proofdocument' value=\""+rs.getString(27)+"\" required></td></tr>"
         +"       <tr><td align=\"right\">proof document number:</td><td><input type='text' name='proofdocumentnumber' value=\""+rs.getString(28)+"\" required></td></tr>"
         +"       <tr align=\"center\"><td style=\"padding-top: 20px\"><input type=\"submit\" value=\"submit\"></td><td align='left' style=\"padding-top: 20px\"><input type=\"reset\" value=\"reset\"></td></tr>"
         +"   </table></form>");
                }
                st.close();
                con.close();
            }
            catch (Exception e)
            {
                System.out.println(e);
            }
            %>