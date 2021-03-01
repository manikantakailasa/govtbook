<%-- 
    Document   : birthapplication
    Created on : Aug 7, 2016, 4:39:26 PM
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        .b6
            {
                background-image: url("images/birth.png");
                background-repeat: no-repeat;
                background-size:1090px 818px;
            }
    </style>
    </head>
    <body>
        <form name="birthappform" onsubmit="return birthapp()">
            <table class="b6" style=" min-height: 450px">
                <tr>
                    <td>Circle/Locality:</td>
                    <td><input type='text' name='circle' required=""></td>
                </tr>
                <tr>
                    <td>Date Of Birth:</td>
                    <td><input type="date" name="dob" required=""></td>
                </tr>
                <tr>
                    <td>sex:</td>
                    <td><select id="sextxt" required=''>
                            <option value='select'>select</option>
                        <option value='male'>male</option>
                        <option value="female">female</option>
                </select></td>
                </tr>
                <tr>
                    <td>Child Name:</td>
                    <td><input type="text" name='childname'></td>
                </tr>
                <tr>
                    <td>Name of the Father:</td>
                    <td><input type="text" name="nofather" required=""></td>
                </tr>
                <tr>
                    <td>Name of the Mother:</td>
                    <td><input type="text" name="nomother" required=""></td>
                </tr>
                <tr>
                    <td>Place of Birth:</td>
                    <td><select required="" id="birthplace">
                                    <option value='select'>select</option>
                                    <option value='hosp/inst'>Hospital/Institution</option>
                                    <option value="houseadd">House Address</option>
                                    <option value="others">Other Place</option>
                                   
                        </select></td>
                </tr>
                <tr>
                    <td colspan="2" align='center'><input type="text" name='pob'></td>
                </tr>
                <tr>
                    <td>
                        Telephone Number:
                    </td>
                    <td>
                        <input type="text" name="telnum" required="">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <b>NOTE:</b>Birth Certificate will be subjected to entry found in Birth Record - C and DMA/Panchayats
                    </td>
                </tr>
                <tr align='center'>
                    <td style="padding-top: 20px">
                        <input type="submit" value="submit">
                    </td>
                    <td align='left' style="padding-top: 20px">
                        <input type="reset" value="reset">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
