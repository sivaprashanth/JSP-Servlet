<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>

<html>
<head>
<title>Namma Seva</title>
  <style type="text/css">
   body 
   {
     background-image: url("bg-13-1.jpg");
                          background-size:100% 100%;
   }
           #container {width:300px; margin:0 auto;}
           form label {display:inline-block; width:140px;}
 
            /* You could add a class to all the input boxes instead, if you like. That would be safer, and more backwards-compatible */
            form input[type="text"],
            form input[type="password"],
            form input[type="email"] {width:160px;}
 
            form .line {clear:both;}
            form .line.submit {text-align:right;}
td {
    padding: 30px;
}



#table1 {
margin-bottom:-15px;
}
a:link, a:visited {
    background-color: skyblue;
    color: black;
    padding: 10px 20px;
    text-align: center;	
    text-decoration: none;
    display: inline-block;
}


a:hover, a:active {
    background-color: Aqua;
}
a {font-size: 20px}
  </style>
</head>
<body>
<form method='post'>
</table>
<table id='table10' style='width:100%'>
<br><br><br><br>
<center><img src='bps-3.png' style='border-radius:15px' width='250' height='150'/></center>
<tr> <td align='center'><h1>Transaction successful </h1></td> </tr>
<br>
<tr> <td align='center'><h1>Balance is : <%=request.getAttribute("reg2")%> </h1></td> </tr> </table>
<br><br>
<table style='width:100%'> <tr> <td align='right'> <a href="designbillpay0.jsp" target="_self">Make Another Payment</a> </td>
<td > <a href="homepage.jsp" target="_self">Return to home page</a> </td> </tr>
</table>
</form>
<center><div id='footer'>Powered by Namma-Seva &copy; 2016</div></center>
</body>
</html>