<%@page import="java.util.*" %>
<%@page import="java.text.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.lang.*"%>
<%@page import="java.io.*"%>
<html>
<head>
  <title>Customer Details</title>
  
  <style>
table {
    border-collapse: collapse;
    width: 100%;
}

h4 {
    text-align: right;
}
th{
    background-color:#808080;
    color: white;
    text-align: center;
    padding: 8px;
font-family:cursive;
font-size: 15px;
}
td{ border-bottom: 1px solid #800000; font-family:cursive;font-size: 18px;}
tr:hover{background-color:#DEB887}
.button {
    background-color: #00BFFF; 
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #0000CD;
}

.button1:hover {
    background-color: #4B0082;
    color: white;
}
.button2 {border-radius: 8px;}
.button3 {border-radius: 4px;}

a:link, a:visited {
    
    color: black;
    padding: 10px 10px;
    border-radius: 8px;
    text-align: center;	
    text-decoration: none;
    display: inline-block;
}


a:hover, a:active {
    background-color:#e6e6e6;
    border-radius: 8px;
    opacity: 0.75;
}
a {font-size: 40px}

</style>
</head>
<body>
<style type="text/css">
body {background-color:ffffff;background-image:url("aipb.jpg");background-repeat:no-repeat;background-size:100% 100%;background-attachment:fixed;}
h2{font-family:Aharoni;color:#000000;}
p {font-family:Times;font-size:22px;font-style:normal;font-weight:normal;color:000000;}
</style> 
    
    <br>
    <center><h2 style="font-size:50px">Customer Details</h2></center> 
    <center><b><a href="homepage.jsp" style=" color:#000000; font-family:Aharoni; font-size:25px">Home</a></center>
                 
  <br></br> 

<table id="cssTable">
  <tr>
    <th align="center" valign="middle">UserID</th>
    <th align="center" valign="middle">First Name</th>
    <th align="center" valign="middle">Last name</th>
      <th  align="center" valign="middle">DOB</th>
      <th align="center" valign="middle">Address</th>
      <th align="center" valign="middle">Contact</th>
      <th align="center" valign="middle">Email Id</th>
      <th align="center" valign="middle">Gender</th>
      <th align="center" valign="middle">Country</th>
      <th align="center" valign="middle">State</th>
      <th align="center" valign="middle">Card Number</th>
       <th align="center" valign="middle">CVV</th>
      <th align="center" valign="middle">Card Validity</th>
       <th align="center" valign="middle">Vendor Type</th>
       <th align="center" valign="middle">Balance</th>
      <th align="center" valign="middle">Identification</th>
      <th align="center" valign="middle">Voter</th>
      <th align="center" valign="middle">PAN</th>
      <th align="center" valign="middle">Passport</th>
      <th align="center" valign="middle">Issue date</th>
      <th align="center" valign="middle">Expiry date</th>
      <th align="center" valign="middle">Aadhar</th>
      </tr>
<tr>
<%
try{
Connection co=null;
Class.forName("oracle.jdbc.driver.OracleDriver");
co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
Statement s=co.createStatement();
PrintWriter o=response.getWriter();
String sq="select * from custom3";
ResultSet r=s.executeQuery(sq);
while(r.next())
{
      out.println("<td align='center' valign='middle'>"+r.getString(1)+"</td>")  ;  
      out.println("<td align='center' valign='middle'>"+r.getString(2)+"</td>")  ;  
      out.println("<td align='center' valign='middle'>"+r.getString(3)+"</td>")  ;  
      out.println("<td align='center' valign='middle'>"+r.getString(4)+"</td>")  ;  
      out.println("<td align='center' valign='middle'>"+r.getString(5)+"</td>")  ;  
      out.println("<td align='center' valign='middle'>"+r.getString(6)+"</td>")  ;  
      out.println("<td align='center' valign='middle'>"+r.getString(7)+"</td>")  ;
      out.println("<td align='center' valign='middle'>"+r.getString(8)+"</td>")  ;  
      out.println("<td align='center' valign='middle'>"+r.getString(9)+"</td>")  ;  
      out.println("<td align='center' valign='middle'>"+r.getString(10)+"</td>")  ;  
      out.println("<td align='center' valign='middle'>"+r.getString(11)+"</td>")  ;  
      out.println("<td align='center' valign='middle'>"+r.getString(12)+"</td>")  ;  
      out.println("<td align='center' valign='middle'>"+r.getString(13)+"</td>")  ;  
      out.println("<td align='center' valign='middle'>"+r.getString(14)+"</td>")  ;  
      out.println("<td align='center' valign='middle'>"+r.getString(15)+"</td>")  ; 
      out.println("<td align='center' valign='middle'>"+r.getString(16)+"</td>")  ; 
      out.println("<td align='center' valign='middle'>"+r.getString(17)+"</td>")  ; 
      out.println("<td align='center' valign='middle'>"+r.getString(18)+"</td>")  ; 
      out.println("<td align='center' valign='middle'>"+r.getString(19)+"</td>")  ; 
      out.println("<td align='center' valign='middle'>"+r.getString(20)+"</td>");
      out.println("<td align='center' valign='middle'>"+r.getString(21)+"</td>"); 
      out.println("<td align='center' valign='middle'>"+r.getString(22)+"</td></tr>");  
}
co.close();
%>
</table>
<%

}
catch(Exception e)
{
    e.printStackTrace();
    }
%>

</body>
</html>


