<%-- 
    Document   : complaint
    Created on : Aug 5, 2016, 5:22:49 PM
    Author     : manikanta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            td
            {
                border-bottom: 1px solid #ddd;
            }
            .z:nth-child(even)
            {
                background-color: #f5f5f5;
            }
            </style>
    </head>
    <body>
        <form name="complform" onsubmit="return comp()">
        <table>
            <tr class="z">
                <td style=" font-weight: bold">Type:</td>
                <td>
                    <select id="compsel" required>
                        <option value="choose option">choose option</option>
                        <optgroup label="police complaints">
                            <option value="theft">Theft</option>
                            <option value="cheating">Cheating</option>
                            <option value="criminal">Criminal</option>
                            <option value="accidents">Accidents</option>
                        </optgroup>
                        <option value="mro" style=" font-weight: bold">MRO issues</option>
                        <option value="other" style=" font-weight: bold">Other Complaints</option>
                    </select>
                </td>
            </tr>
            <tr class="z">
                <td style=" font-weight: bold">Pincode:</td>
                <td><input type="text" id="pincodetxt" required=""></td>
            </tr>
            <tr class="z">
                <td style=" font-weight: bold">Street:</td>
                <td><input type="text" id="streettxt" required=""></td>
            </tr>
            <tr class="z">
                <td style=" font-weight: bold">Complaints:</td>
                <td><textarea rows="5" cols="70" id="complaintstxt" required=""></textarea></td>
            </tr>
            <tr class="z">
                <td style="padding-top: 20px"><input type="submit" name="submit"></td>
                <td style="padding-top: 20px"><input type="reset"></td>
            </tr>
        </table>
        </form>
    </body>
</html>
