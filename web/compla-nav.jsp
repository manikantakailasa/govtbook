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
            <tr class="y" onclick='$("#mainpage1").load("complaint.jsp")'>
                <td class="x">new complaints</td>
            </tr>
            <tr class="y" onclick='$("#mainpage1").load("compaldis.jsp")'>
                <td class="x">complaints</td>
            </tr>
            <tr class="y" onclick='$("#mainpage1").load("compalstatus.jsp")'>
                <td class="x">status of complaint</td>
            </tr>
        </table>
    </body>
</html>
