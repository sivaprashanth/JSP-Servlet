
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator" %>

<html>
<head>
<title>Namma Seva</title>
<h1 align="center" style="color:red ; font-family:Cursive; font-size:300%;"> Error !!!!!!</h1>
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

  </style>
</head>
<%
List sc=(List)request.getAttribute("go1");
out.println("<html> <body> <center> <br><br><br><br><br><br><br><br><br><br><br>");
out.println("<font color='red'>");
out.println("<h1> Unique constraint violated. The details entered already exists. ");
out.println("Check your Mobile Number, Web Address, Email.</h1>");
out.println("*"+sc); 
out.println("</font>"); 
out.println("<br>");
out.println("</center> </body> </html>");%>