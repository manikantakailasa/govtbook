<%@page import="java.sql.*" %>
        <%!
            String userid;
            String LPGgastype;
            String districtofdistributer;
            String locationofdistributer;
            String LPGdistributercompany;
            String distributeraddress;
            String distributerpincode;
            String distributeremailid;
            String distributercontactnumber;
            String applicantname;
            String applicantage;
            String applicantprofession;
            String whetherworkingcouple ;
            String numberoffamilymembers;
            String incomeperyear;
            String whetherusedLPGearlier;
            String housenumber;
            String landmark_locality_colony;
            String district;
            String mandal;
            String ward_village;
            String pincode;
            String emailid;
            String informantname;
            String relationwithapplicant;
            String informantmobilenumber;
            String proofdocument;
            String proofdocumentnumber;
            ResultSet rs=null;
            Connection con=null;            
            Statement st=null;
        %>
        <%
            userid=(String) session.getAttribute("Id");
            LPGgastype=request.getParameter("LPGgastype");
            districtofdistributer=request.getParameter("districtofdistributer");
	    locationofdistributer=request.getParameter("locationofdistributer");
            LPGdistributercompany=request.getParameter("LPGdistributercompany");
            distributeraddress=request.getParameter("distributeraddress");
            distributerpincode=request.getParameter("distributerpincode");
            distributeremailid=request.getParameter("distributeremailid");
            distributercontactnumber=request.getParameter("distributercontactnumber");
            applicantname=request.getParameter("applicantname");
            applicantage=request.getParameter("applicantage");
            applicantprofession=request.getParameter("applicantprofession");
            whetherworkingcouple=request.getParameter("whetherworkingcouple");
            numberoffamilymembers=request.getParameter("numberoffamilymembers");
            incomeperyear=request.getParameter("incomeperyear");
            whetherusedLPGearlier=request.getParameter("whetherusedLPGearlier");
            housenumber=request.getParameter("housenumber");
            landmark_locality_colony=request.getParameter("landmark_locality_colony");
            district=request.getParameter("district");
            mandal=request.getParameter("mandal");
            ward_village=request.getParameter("ward_village");
            pincode=request.getParameter("pincode");
            emailid=request.getParameter("emailid");
            informantname=request.getParameter("informantname");
            relationwithapplicant=request.getParameter("relationwithapplicant");
            informantmobilenumber=request.getParameter("informantmobilenumber");
            proofdocument=request.getParameter("proofdocument");
            proofdocumentnumber=request.getParameter("proofdocumentnumber");
		try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1522/xe","system","mani");
                st=con.createStatement();
                st.executeQuery("insert into gasapplication values ('"+userid+"','"+LPGgastype+"','"+districtofdistributer+"','"+locationofdistributer+"','"+LPGdistributercompany+"','"+distributeraddress+"','"+distributerpincode+"','"+distributeremailid+"','"+distributercontactnumber+"','"+applicantname+"','"+applicantage+"','"+applicantprofession+"','"+whetherworkingcouple+"','"+numberoffamilymembers+"','"+incomeperyear+"','"+whetherusedLPGearlier+"','"+housenumber+"','"+landmark_locality_colony+"','"+district+"','"+mandal+"','"+ward_village+"','"+pincode+"','"+emailid+"','"+informantname+"','"+relationwithapplicant+"','"+informantmobilenumber+"','"+proofdocument+"','"+proofdocumentnumber+"','unseen')");
                st.close();
                con.close();
            }
            catch (Exception e)
            {
                System.out.println(e);
            }
        %>