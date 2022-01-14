<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <meta charset="UTF-8"/>
            <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Employee Management System</title>
            <style>
                *{
                    margin: 0;
                    padding: 0;
                }
                body{
                    background-color: #85929E;
                    font-family: 'Montserrat';
                }
                h1{
                    text-align: center;
                    color: white;
                    background-color: #6C3483 ;
                    padding:1%;
                }
                table{
                    background-color: #F7DC6F;
                    margin:2% 5%;
                    width:90%;
                }
                td, th{
                    text-align:left;
                    padding:1.5%;
                }
            </style>
        </head>
        <body>
            <h1>Employee Management System</h1>
            <table>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>AGE</th>
                    <th>SALARY</th>
                    <th>EMAIL</th>
                    <th>PHONE</th>
                    <th>DESIGNATION</th>
                    <th>PROMOTION</th>
                </tr>
                <xsl:for-each select="Company/Employee">
                    <tr>
                        <td><xsl:value-of select="@id"/></td>
                        <td><xsl:value-of select="Emp-name"/></td>
                        <td><xsl:value-of select="Emp-age"/></td>
                        <td><xsl:value-of select="Emp-salary"/></td>
                        <td><xsl:value-of select="Emp-emailid"/></td>
                        <td><xsl:value-of select="Emp-phonenum"/></td>
                        <td><xsl:value-of select="Emp-designation"/></td>
                        <xsl:if test="Emp-age &gt; 50">
                            <td>Associate Project Manager</td>
                        </xsl:if>
                        <xsl:if test="Emp-age &gt; 41">
                            <td>Team Leader</td>
                        </xsl:if>
                        <xsl:if test="Emp-age &lt; 40">
                            <td>Developer</td>
                        </xsl:if>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>