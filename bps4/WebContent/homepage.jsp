<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>

<html>
<head>
<title>Namma Seva</title>
<h1 align="center" style="color:#ffa64d ; font-family:Cursive; font-size:300%;"> NAMMA SEVA </h1>
  <style type="text/css">
   body 
   {
     background-image: url("bench.jpg");
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
    padding:20px;
}



#table1 {
margin-bottom:-15px;
}
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
<form method='post'>
<table style='width:100%'> 
<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr>
</tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<tr> <td align='right'><a href="designcusreg.jsp" target="_self">Customer Registration</a>  </td> 
<td align='left'> <a href="designvenreg.jsp" target="_self">Vendor Registration</a>  </td> </tr>
<tr> <td align='right'> <a href="designcusupd0.jsp" target="_self">Customer Updation</a>  </td> 
<td align='left'> <a href="designvenupd0.jsp" target="_self">Vendor Updation</a> </td> </tr> 
</table>

<table style='width:100%'>
<tr> <td align='center'> <a href="designbillpay0.jsp" target="_self">Bill Payment</a> </td> </tr>
</table>

<table style='width:110%'>
<br><br><br><br><br>
<tr> <td> <a href="designcustable.jsp" target="_self">Customer Details</a> </td>
<td><a href="designventable.jsp" target="_self">Vendor Details</a>  </td> 
<td> <a href="designbilltable.jsp" target="_self">Bill Payment Details</a>  </td> </tr>
</table>

<table style="width:100%"><tr> <td align='center'> <a href="Main.jsp" target="_self">Log out</a> </td> </tr></table> 

</form>
<br><br><br><center><div id='footer'>Powered by Namma-Seva &copy; 2016</div></center>
</body>
</html>