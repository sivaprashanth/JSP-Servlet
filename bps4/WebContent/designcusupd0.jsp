<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>

<html>
<head>
<title>Namma Seva</title>
<h1 align="center" style="color:#007acc ; font-family:Cursive; font-size:300%;"> Customer Updation </h1>
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
<body>
<form action='designcusupd.jsp' method='post'>
<center>

Enter User ID : <input type='text' value='' class='rounded' name='u1'/>
<br>
<br>
<input type='submit' value='submit'/>
</center>
</form>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><center><div id='footer'>Powered by Namma-Seva &copy; 2016</div></center>
</body>
</html>