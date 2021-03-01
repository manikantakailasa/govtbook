<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <script type="text/javascript" src="jquery-1.9.1.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            .x
            {
                    border-bottom: 1px solid #ddd;
                    padding: 10px;
            }
            .y:hover
            {
                cursor: pointer;
                background-color: #f5f5f5;
            }
        </style>
        
    </head>
    <body>
        <table>
            <tr class="y" onclick='$("#mainpage1").load("birthapplication.jsp")'>
                <td class="x">Apply</td>
            </tr>
            <tr class="y" onclick='$("#mainpage1").load("birth_edit.jsp")'>
                <td class="x">Edits in submitted form</td>
            </tr>
            <tr class="y" onclick='$("#mainpage1").load("compaldis.jsp")'>
                <td class="x">Status</td>
            </tr>
        </table>
    </body>
</html>
