<%-- 
    Document   : mainpage
    Created on : Jul 29, 2016, 10:10:34 AM
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="jquery-1.9.1.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table
            {
                width: 100%;
            }
            .b
            {
                background-image: url("images/opacity.png");
                background-repeat:  no-repeat;
                background-size:1090px 818px;
            }
        </style>
        <script>
            function licenseapp_edit()
            {
                var p1=document.licenseappform_edit.displaynameonlicense.value;
                var p2=document.licenseappform_edit.firstname.value;
                var p3=document.licenseappform_edit.surname.value;
                var p4=document.licenseappform_edit.dateofbirth.value;
                var p5=document.getElementById("gendertxt_edit").value;
                var p6=document.licenseappform_edit.fathersname.value;
                var p7=document.licenseappform_edit.electoralnumber.value;
                var p8=document.licenseappform_edit.pancardnumber.value;
                var p9=document.licenseappform_edit.bloodgroup.value;
                var p10=document.licenseappform_edit.nationality.value;
                var p11=document.licenseappform_edit.height_incms.value;
                var p12=document.licenseappform_edit.qualification.value;
                var p13=document.licenseappform_edit.identificationmarks1.value;
                var p14=document.licenseappform_edit.identificationmarks2.value;
                var p15=document.licenseappform_edit.address.value;
                var p16=document.licenseappform_edit.district.value;
                var p17=document.licenseappform_edit.mandal.value;
                var p18=document.licenseappform_edit.pincode.value;
                var p19=document.licenseappform_edit.mobilenumber.value;
                var p20=document.licenseappform_edit.emailid.value;
                var p21=document.licenseappform_edit.licensecategory.value;
                var p22=document.licenseappform_edit.licenseclassofvehicle.value;
                $("#tempdiv").load("llicensedb_edit.jsp",{"displaynameonlicense":p1,"firstname":p2,"surname":p3,"dateofbirth":p4,"gendertxt":p5,"fathersname":p6,"electoralnumber":p7,"pancardnumber":p8,"bloodgroup":p9,"nationality":p10,"height":p11,"qualification":p12,"identificationmarks1":p13,"identificationmarks2":p14,"address":p15,"district":p16,"mandal":p17,"pincode":p18,"mobilenumber":p19,"emailid":p20,"licensecategory":p21,"licenseclassofvehicle":p22});
                alert("Your Application Has been submitted");
                document.licenseappform_edit.reset();
                return false;
            }
            function newgas_edit()
            {
                var p1=document.newgasform_edit.LPGgastype.value;
                var p2=document.newgasform_edit.districtofdistributer.value;
                var p3=document.newgasform_edit.locationofdistributer.value;
                var p4=document.newgasform_edit.LPGdistributercompany.value;
                var p5=document.newgasform_edit.distributeraddress.value;
                var p6=document.newgasform_edit.distributerpincode.value;
                var p7=document.newgasform_edit.distributeremailid.value;
                var p8=document.newgasform_edit.distributercontactnumber.value;
                var p9=document.newgasform_edit.applicantname.value;
                var p10=document.newgasform_edit.applicantage.value;
                var p11=document.newgasform_edit.applicantprofession.value;
                var p12=document.newgasform_edit.whetherworkingcouple.value;
                var p13=document.newgasform_edit.numberoffamilymembers.value;
                var p14=document.newgasform_edit.incomeperyear.value;
                var p15=document.newgasform_edit.whetherusedLPGearlier.value;
                var p16=document.newgasform_edit.housenumber.value;
                var p17=document.newgasform_edit.landmark_locality_colony.value;
                var p18=document.newgasform_edit.district.value;
                var p19=document.newgasform_edit.mandal.value;
                var p20=document.newgasform_edit.ward_village.value;
                var p21=document.newgasform_edit.pincode.value;
                var p22=document.newgasform_edit.emailid.value;
                var p23=document.newgasform_edit.informantname.value;
                var p24=document.newgasform_edit.relationwithapplicant.value;
                var p25=document.newgasform_edit.informantmobilenumber.value;
                var p26=document.newgasform_edit.proofdocument.value;
                var p27=document.newgasform_edit.proofdocumentnumber.value;

                $("#tempdiv").load("newgasbookingdb_edit.jsp",{"LPGgastype":p1,"districtofdistributer":p2,"locationofdistributer":p3,"LPGdistributercompany":p4,"distributeraddress":p5,"distributerpincode":p6,"distributeremailid":p7,"distributercontactnumber":p8,"applicantname":p9,"applicantage":p10,"applicantprofession":p11,"whetherworkingcouple":p12,"numberoffamilymembers":p13,"incomeperyear":p14,"whetherusedLPGearlier":p15,"housenumber":p16,"landmark_locality_colony":p17,"district":p18,"mandal":p19,"ward_village":p20,"pincode":p21,"emailid":p22,"informantname":p23,"relationwithapplicant":p24,"informantmobilenumber":p25,"proofdocument":p26,"proofdocumentnumber":p27});
                alert("Your Application Has been re-submited");
                document.newgasform_edit.reset();
                return false;
            }
            function birthapp_edit()
            {
                var p1=document.birth_editform.circle.value;
                var p2=document.birth_editform.dob.value;
                var p3=document.getElementById("sextxt_edit").value;
                var p4=document.birth_editform.childname.value;
                var p5=document.birth_editform.nofather.value;
                var p6=document.birth_editform.nomother.value;
                var p7=document.getElementById("birthplace_edit").value;
                var p8=document.birth_editform.pob.value;
                var p9=document.birth_editform.telnum.value;
                $("#tempdiv").load("birthappdb_edit.jsp",{"circle":p1,"dob":p2,"sex":p3,"childname":p4,"nofather":p5,"nomother":p6,"birthplace":p7,"pob":p8,"telnum":p9});
                alert("Your Application Has been updated");
                document.birth_editform.reset();
                return false;
            }
            function licenseapp()
            {
                var p1=document.licenseappform.displaynameonlicense.value;
                var p2=document.licenseappform.firstname.value;
                var p3=document.licenseappform.surname.value;
                var p4=document.licenseappform.dateofbirth.value;
                var p5=document.getElementById("gendertxt").value;
                var p6=document.licenseappform.fathersname.value;
                var p7=document.licenseappform.electoralnumber.value;
                var p8=document.licenseappform.pancardnumber.value;
                var p9=document.licenseappform.bloodgroup.value;
                var p10=document.licenseappform.nationality.value;
                var p11=document.licenseappform.height_incms.value;
                var p12=document.licenseappform.qualification.value;
                var p13=document.licenseappform.identificationmarks1.value;
                var p14=document.licenseappform.identificationmarks2.value;
                var p15=document.licenseappform.address.value;
                var p16=document.licenseappform.district.value;
                var p17=document.licenseappform.mandal.value;
                var p18=document.licenseappform.pincode.value;
                var p19=document.licenseappform.mobilenumber.value;
                var p20=document.licenseappform.emailid.value;
                var p21=document.licenseappform.licensecategory.value;
                var p22=document.licenseappform.licenseclassofvehicle.value;
                $("#tempdiv").load("llicensedb.jsp",{"displaynameonlicense":p1,"firstname":p2,"surname":p3,"dateofbirth":p4,"gendertxt":p5,"fathersname":p6,"electoralnumber":p7,"pancardnumber":p8,"bloodgroup":p9,"nationality":p10,"height":p11,"qualification":p12,"identificationmarks1":p13,"identificationmarks2":p14,"address":p15,"district":p16,"mandal":p17,"pincode":p18,"mobilenumber":p19,"emailid":p20,"licensecategory":p21,"licenseclassofvehicle":p22});
                alert("Your Application Has been submitted");
                document.licenseappform.reset();
                return false;
            }
            function newgas()
            {
                var p1=document.newgasform.LPGgastype.value;
                var p2=document.newgasform.districtofdistributer.value;
                var p3=document.newgasform.locationofdistributer.value;
                var p4=document.newgasform.LPGdistributercompany.value;
                var p5=document.newgasform.distributeraddress.value;
                var p6=document.newgasform.distributerpincode.value;
                var p7=document.newgasform.distributeremailid.value;
                var p8=document.newgasform.distributercontactnumber.value;
                var p9=document.newgasform.applicantname.value;
                var p10=document.newgasform.applicantage.value;
                var p11=document.newgasform.applicantprofession.value;
                var p12=document.newgasform.whetherworkingcouple.value;
                var p13=document.newgasform.numberoffamilymembers.value;
                var p14=document.newgasform.incomeperyear.value;
                var p15=document.newgasform.whetherusedLPGearlier.value;
                var p16=document.newgasform.housenumber.value;
                var p17=document.newgasform.landmark_locality_colony.value;
                var p18=document.newgasform.district.value;
                var p19=document.newgasform.mandal.value;
                var p20=document.newgasform.ward_village.value;
                var p21=document.newgasform.pincode.value;
                var p22=document.newgasform.emailid.value;
                var p23=document.newgasform.informantname.value;
                var p24=document.newgasform.relationwithapplicant.value;
                var p25=document.newgasform.informantmobilenumber.value;
                var p26=document.newgasform.proofdocument.value;
                var p27=document.newgasform.proofdocumentnumber.value;

                $("#tempdiv").load("newgasbookingdb.jsp",{"LPGgastype":p1,"districtofdistributer":p2,"locationofdistributer":p3,"LPGdistributercompany":p4,"distributeraddress":p5,"distributerpincode":p6,"distributeremailid":p7,"distributercontactnumber":p8,"applicantname":p9,"applicantage":p10,"applicantprofession":p11,"whetherworkingcouple":p12,"numberoffamilymembers":p13,"incomeperyear":p14,"whetherusedLPGearlier":p15,"housenumber":p16,"landmark_locality_colony":p17,"district":p18,"mandal":p19,"ward_village":p20,"pincode":p21,"emailid":p22,"informantname":p23,"relationwithapplicant":p24,"informantmobilenumber":p25,"proofdocument":p26,"proofdocumentnumber":p27});
                alert("Your Application Has been submitted");
                document.newgasform.reset();
                return false;
            }
            function birthapp()
            {
                var p1=document.birthappform.circle.value;
                var p2=document.birthappform.dob.value;
                var p3=document.getElementById("sextxt").value;
                var p4=document.birthappform.childname.value;
                var p5=document.birthappform.nofather.value;
                var p6=document.birthappform.nomother.value;
                var p7=document.getElementById("birthplace").value;
                var p8=document.birthappform.pob.value;
                var p9=document.birthappform.telnum.value;
                $("#tempdiv").load("birthappdb.jsp",{"circle":p1,"dob":p2,"sex":p3,"childname":p4,"nofather":p5,"nomother":p6,"birthplace":p7,"pob":p8,"telnum":p9});
                alert("Your Application Has been submitted");
                document.birthappform.reset();
                return false;
            }
            function comp()
            {
                var p1=document.getElementById("compsel").value;
                var p2=document.getElementById("pincodetxt").value;
                var p3=document.getElementById("streettxt").value;
                var p4=document.getElementById("complaintstxt").value;
                $("#tempdiv").load("complaintdb.jsp",{"type":p1,"pincodetxt":p2,"streettxt":p3,"compltxt":p4});
                alert("your complaint has accepted");
                document.complform.reset();
                return false;
            }
            </script>
    </head>
    <body style="width: 100%">
        <table style="min-height: 640px">
            <tr>
                <td colspan="2">
                    <%@include file="header.html" %>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <%@include file="menu2.jsp" %>
                </td>
            </tr>
            <tr class="b">
                <td style="width: 20%;height: 100%;vertical-align: top">
                    <div  id="navigation"></div> 
                </td>
                <td style="width: 80%">
                    <div id="mainpage1"></div> 
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <%@include file="footer.html" %>
                </td>
            </tr>
        </table>
                <div id="tempdiv"></div>
    </body>
</html>
