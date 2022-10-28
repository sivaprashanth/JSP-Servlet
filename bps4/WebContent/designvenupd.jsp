<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>

<html>
<head>
<script src="http://www.google.com/jsapi" type="text/javascript"></script>
<script type="text/javascript">google.load("jquery", "1.3.2");</script>
 
  <title>Vendor Registration</title>
<h1 align="center" style="color:#007acc ; font-family:Cursive; font-size:300%;"> Vendor Updation </h1>
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
    padding: 10px;
}

input.rounded {
	border: 1px solid #ccc;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 10px;
	-moz-box-shadow: 2px 2px 3px #666;
	-webkit-box-shadow: 2px 2px 3px #666;
	box-shadow: 2px 2px 3px #666;
	font-size: 15px;
	padding: 2px 2px;
	outline: 0;
	-webkit-appearance: none;
}
input.rounded:focus {
	border-color: #00FFFF;
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
a {font-size: 30px}
  </style>
</head>



<%Connection co=null;
Class.forName("oracle.jdbc.driver.OracleDriver");
co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
Statement s=co.createStatement();
String sv=request.getParameter("v1");
String m1="select * from vend3 where vid2='"+sv+"'";
ResultSet r= s.executeQuery(m1);
int count=0;
while(r.next())
{
	out.println("<body> <form action='Validatorvenupd' method='post'>");
	String x2= r.getString(2);
	out.println("<table id='table1' style='width:100%'> <tr> <td align='right'> <div class='line'> <label>Vendor Type* </label> </td>");
	out.println("<td> <select name = 't2'>");
	String m[]={"Tax","E Bill","Insurance","Telephone Bill"};
	if ((x2==null) || x2.equals("Select"))
	{
	out.println("<option value='Select'>..Select...</option>");    
	}
	for(int i=0;i<m.length;i++)
	{
	    out.println("<option value='"+m[i]+"'");
	    
	    if(m[i].equals(x2))
	    {
	        out.println("selected");
	    }
	    out.println(">"+m[i]+"</option>");
	}
	out.println("</select> </td> </div> </tr>");
	

out.println(" <tr> <td align='right'> <div class='line'><label>Vendor Name* </label> </td> ") ; 
String x1=r.getString(3);
if(x1==null)
{
    x1= "";
}
out.println("<td> <input type='text' value='"+x1+"' class='rounded' name='t1'/> </td> </div> </tr>")  ;     
          


out.println("<tr> <td align='right'> <div class='line'> <label>Address* </label> </td> ");       
String x3=r.getString(4);
if(x3==null)
{
    x3= "";
}       
out.println("<td> <input type='text' value='"+x3+"' class='rounded' name='t3'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Contact* </label> </td> ");       
String x4=r.getString(5);
if(x4==null)
{
    x4= "";
}       
out.println("<td> <input type='text' value='"+x4+"' class='rounded' name='t4'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Email* </label> </td> ");       
String x5=r.getString(6);
if(x5==null)
{
    x5= "";
}       
out.println("<td> <input type='text' value='"+x5+"' class='rounded' name='t5'/> </td> </div> </tr>");


String x6=r.getString(7);
out.println("<tr> <td align='right'> <div class='line'> <label> Country* </label> </td>");
out.println("<td> <select name = 't6'>");
String m13[]={"India","USA","Australia"};
if ((x6==null) || x6.equals("Select"))
{
out.println("<option value='Select'>..Select...</option>");    
}
for(int i=0;i<m13.length;i++)
{
    out.println("<option value='"+m13[i]+"'");
    
    if(m13[i].equals(x6))
    {
        out.println("selected");
    }
    out.println(">"+m13[i]+"</option>");
}
out.println("</select> </td> </div> </tr>");

String x7= r.getString(8);
out.println("<tr> <td align='right'> <div class='line'> <label> State* </label> </td>");
out.println("<td> <select name = 't7'>");
String m2[]={"Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chhattisgarh","Goa","Gujarat","Haryana",
		     "Himachal Pradesh","Jammu and Kashmir","Jharkhand","Karnataka","Kerala","Madhya Pradesh","Maharashtra",
		     "Manipur","Meghalaya","Mizoram","Nagaland","Odisha","Punjab","Rajasthan","Sikkim","Tamil Nadu",
		     "Telangana","Tripura","Uttar Pradesh","West Bengal","New york","Virginia","Missouri","Arizona","Florida",
		     "Alaska","Texas","California","Nevada","New jersey","Washington","Ohio","New South Wales","Victoria",
		     "Queensland","Western Australia","South Australia","Australian Capital Territory","Tasmania",
		     "Northern Territory"};
if ((x7==null) || x7.equals("Select"))
{
out.println("<option value='Select'>..Select...</option>");    
}
for(int i=0;i<m2.length;i++)
{
    out.println("<option value='"+m2[i]+"'");
    
    if(m2[i].equals(x7))
    {
        out.println("selected");
    }
    out.println(">"+m2[i]+"</option>");
}
out.println("</select> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Web Address* </label> </td> ");       
String x8=r.getString(9);
if(x8==null)
{
    x8= "";
}       
out.println("<td> <input type='text' value='"+x8+"' class='rounded' name='t8'/> </td> </div> </tr>");


out.println("<tr> <td align='right'> <div class='line'> <label>Employee Count* </label> </td> ");       
String x11=r.getString(12);
if(x11==null)
{
    x11= "";
}       
out.println("<td> <input type='text' value='"+x11+"' class='rounded' name='t11'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Customer Count* </label> </td> ");       
String x12=r.getString(13);
if(x12==null)
{
    x12= "";
}       
out.println("<td> <input type='text' value='"+x12+"' class='rounded' name='t12'/> </td> </div> </tr>");   

out.println("<tr> <td align='right'> <div class='line'> <label>Year of Establishment* </label> </td> ");       
String x13=r.getString(14);
if(x13==null)
{
    x13= "";
}       
out.println("<td> <input type='text' value='"+x13+"' class='rounded' name='t13'/> </td> </div> </tr> </table>");

out.println("<tr> <input type='hidden' value='"+sv+"' class='rounded' name='t14'/>  </tr> </table>");

  


out.println("<table style='width:110%'> <tr> </tr> <tr> </tr> <tr> </tr> <tr> </tr> <tr>");
out.println("<tr> <td align='right'> <div class='line'><input type='submit' value='Update'/> </td> </div> ");
%>
<td> <a href="homepage.jsp" target="_self">Cancel</a>  </td> </tr> </table> </form> </body>
<%
count++;

}
if(count<1)
{
	out.println("<body> <form action='designvenupd0.jsp' method='post'>");
	out.println("<br><br><br><br><br><br><br><br><br><br><br><br><br>");
	out.println("<center>");
	out.println("<font color='red'>");
	out.println("<h1>Invalid Vendor ID</h1>");
	out.println("</font>");
	out.println("<input type='submit' value='Go back'/>");
	out.println("</center>");
}
List ll=(List)request.getAttribute("go"); 
if(ll!=null)
{
	out.println("<center>");
	out.println("<font color='red'>");
	out.println("*"+ll.get(0));
	out.println("</font>"); 
	out.println("<br>");
	out.println("</center>");
	
	/*Iterator<String> i=ll.iterator();
	while(i.hasNext())
	{
		out.println("<center>");
		out.println("<font color='red'>");
		out.println("*"+i.next()); 
		out.println("</font>"); 
		out.println("<br>");
		out.println("</center>");
	}*/
}
List lll=(List)request.getAttribute("go1"); 
if(lll!=null)
{
	Iterator<String> i=lll.iterator();
	while(i.hasNext())
	{
		out.println("<center>");
		out.println("<font color='red'>");
		out.println("*"+i.next()); 
		out.println("</font>"); 
		out.println("<br>");
		out.println("</center>");
	}
}
out.println("<center><div id='footer' >Powered by Namma-Seva &copy; 2016</div></center> ");
%>
</html>


