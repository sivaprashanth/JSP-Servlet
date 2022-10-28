<%@page import="java.util.*" %>
<%@page import="java.text.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.lang.*"%>
<%@page import="java.io.*"%>
<html>
<head>
  <title>Bill Payment Details</title>
  
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
    padding: 10px;
font-family:cursive;
font-size: 15px;
}
td{ border-bottom: 1px solid #800000; font-family:cursive;font-size: 18px;}


tr:hover{background-color:#DEB887;}
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
    <center><h2 style="font-size:50px">Bill Payment Details</h2></center> 
    <center><b><a href="homepage.jsp" style=" color:#000000; font-family:Aharoni; font-size:25px">Home</a></center>
                 
  <br></br> 

<table id="cssTable">
  <tr>
    <th align="center" valign="middle">User ID</th>
    <th align="center" valign="middle">Vendor Type</th>
    <th align="center" valign="middle">Vendor Name</th>
      <th align="center" valign="middle">Arrears</th>
      <th align="center" valign="middle">Amount</th>
      <th align="center" valign="middle">Total Amount</th>
      <th align="center" valign="middle">Amount Paid</th>
      <th align="center" valign="middle">Balance</th>
      <th align="center" valign="middle">Card Type</th>
      <th align="center" valign="middle">Payment Date</th>
      
      </tr>
<tr>
<%
try{
Connection co=null;
Class.forName("oracle.jdbc.driver.OracleDriver");
co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
Statement s=co.createStatement();
PrintWriter o=response.getWriter();
String sq="select * from bp3";
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
      out.println("<td align='center' valign='middle'>"+r.getString(10)+"</td></tr>")  ;  
     
      //out.println("<td align='center' valign='middle'>"+r.getString(9)+"</td></tr>");  
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


