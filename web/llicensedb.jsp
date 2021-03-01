<%@page import="java.sql.*" %>
        <%!
            String userid;
            String displaynameonlicense;
            String firstname;
            String surname;
            String dateofbirth;
            String gender;
            String fathersname;
            String electoralnumber;
            String pancardnumber;
            String bloodgroup;
	    String nationality;
	    String height;
            String qualification;
	    String identificationmarks1;
	    String identificationmarks2;
	    String address;
	    String district; 
	    String mandal;
	    String state;
	    String pincode;
	    String mobilenumber;
            String emailid;
	    String licensecategory;
	    String licenseclassofvehicle;
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;
        %>
        <%
            userid=(String) session.getAttribute("Id");
            displaynameonlicense=request.getParameter("displaynameonlicense");
            firstname=request.getParameter("firstname");
            surname=request.getParameter("surname");
            dateofbirth=request.getParameter("dateofbirth");
            gender=request.getParameter("gendertxt");
            fathersname=request.getParameter("fathersname");
            electoralnumber=request.getParameter("electoralnumber");
            pancardnumber=request.getParameter("pancardnumber");
            bloodgroup=request.getParameter("bloodgroup");
	    nationality=request.getParameter("nationality");
	    height=request.getParameter("height");
	    qualification=request.getParameter("qualification");
	    identificationmarks1=request.getParameter("identificationmarks1");
	    identificationmarks2=request.getParameter("identificationmarks2");
	    address=request.getParameter("address");
	    district=request.getParameter("district");
	    mandal=request.getParameter("mandal");
	    state=request.getParameter("state");
	    pincode=request.getParameter("pincode");
	    mobilenumber=request.getParameter("mobilenumber");
            emailid=request.getParameter("emailid");
	    licensecategory=request.getParameter("licensecategory");
	    licenseclassofvehicle=request.getParameter("licenseclassofvehicle");
            try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                st=con.createStatement();
                st.executeQuery("insert into llicense values ('"+userid+"','"+displaynameonlicense+"','"+firstname+"','"+surname+"','"+dateofbirth+"','"+gender+"','"+fathersname+"','"+electoralnumber+"','"+pancardnumber+"','"+bloodgroup+"','"+nationality+"','"+height+"','"+qualification+"','"+identificationmarks1+"','"+identificationmarks1+"','"+address+"','"+district+"','"+mandal+"','"+pincode+"','"+mobilenumber+"','"+emailid+"','"+licensecategory+"','"+licenseclassofvehicle+"','unseen')");
                st.close();
                con.close();
            }
            catch (Exception e)
            {
                System.out.println(e);
            }
        %>