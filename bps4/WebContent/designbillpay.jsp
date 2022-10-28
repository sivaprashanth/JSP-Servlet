<%@page import="java.sql.Array"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>

<html>
<head>

<script type="text/javascript">
function goFurther(){
if (document.getElementById("chkAgree").checked == true)
document.getElementById("btnSubmit").disabled = false;
else
document.getElementById("btnSubmit").disabled = true;
}
</script>

 
  <title>Bill Payment</title>
<h1 align="center" style="color:#007acc ; font-family:Cursive; font-size:300%;"> Bill Payment </h1>
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
a {font-size: 20px}
  </style>
</head>




<%
Random random = new Random();
List ll=new ArrayList();
List ll3=new ArrayList();
Connection co=null;
Class.forName("oracle.jdbc.driver.OracleDriver");
co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
Statement s=co.createStatement();
String sz=request.getParameter("u1");
String mk="select * from custom3 where uid2='"+sz+"'";
ResultSet r= s.executeQuery(mk);
int count=0;
out.println("<body> <form id='billp' action='Validatorbillpay' method='post'>");
out.println("<table id='table1' style='width:100%'>") ; 


while(r.next())
{
	String x2= r.getString(14);
	if(x2.contains(","))
	{
		StringTokenizer st=new StringTokenizer(x2,",");
		while(st.hasMoreTokens())
		{
			ll.add(st.nextToken().trim());
		}
	}
	else
	{
		ll.add(x2.trim());
	}
	
	%>	
	
	
	<tr> <td align='right'> <div class='line'> <label> Vendor Type* </label> </td>
	<td> <select id='xc'  name = 't2' onchange='xyza()'>
	<option value='select' >Select</option>
	<%
	
	for(int i=0;i<ll.size();i++)
	{%>
    	<option value='<%=ll.get(i) %>'><%=ll.get(i) %></option>
	<%} %>
	</select> </td> </tr>
	
  
	
	
<script>
function xyza()
{
var theForm = document.forms["billp"];
var sc = theForm.elements["xc"];
var sc1 = theForm.elements["zx"];
var arr1=[];
function removeOptions(selectbox)
{
    var i;
    for(i=selectbox.options.length-1;i>=0;i--)
    {
        selectbox.remove(i);
    }
}
removeOptions(document.getElementById("selectNumber"));
if(sc.value!=null)
	{
		if(sc.value.localeCompare("Tax")==0)
		{
			 var arr1 = ["House Tax", "Personal Income Tax", "Water Tax"];
			 var sum=700;
		}
		else if(sc.value === "E Bill")
		{
			 var arr1 = ["Tata Power", "Reliance Power", "TANGEDCO", "TNEB" ];
			 var sum=1000;
		}
		else if(sc.value === "Insurance")
		{
			 var arr1 = ["HDFC ERGO General", "Birla Sun Life", "LIC India", "ICICI PRO Life", "Kotak Life" ];
			 var sum=1200;
		}
		else if(sc.value === "Telephone Bill")
		{
			 var arr1 = ["Airtel", "BSNL", "Vodafone", "Aircel", "Tata Docomo", "Idea", "Reliance", "MTS"  ];
			 var sum=2000;
		}
		sc1.value=sum;
		var dropdown = document.getElementById("selectNumber");
		// Loop through the array
		for (var i = 0; i < arr1.length; ++i) 
		    // Append the element to the end of Array list
		    dropdown[dropdown.length] = new Option(arr1[i], arr1[i]);
	}
}
	</script>
  
<tr> <td align='right'> <div class='line'> <label> Vendor Name* </label> </td>
	<td> <select id='selectNumber' name = 't3'>
    	<option value=''>Select</option>
	</select> </td> </tr>

	

	<%

out.println("<tr> <td align='right'> <div class='line'> <label>Arrears* </label> </td> ");       
String x4=r.getString(15);
if(x4==null)
{
    x4= "";
}       
out.println("<td> <input id='ba' type='text' value='"+x4+"' class='rounded' name='t4' onfocus='neg()'/> </td> </div> </tr>");

%>
<script>
function neg()
{
	var theForm = document.forms["billp"];
	var sc = theForm.elements["ba"];
if(parseInt(sc.value)<0)
{
alert("Negative indicates u have money in your account");
}
}
</script>

<%
out.println("<tr> <td align='right'> <div class='line'> <label>Amount* </label> </td> ");       
String x5=request.getParameter("t5");
if(x5==null)
{
    x5= "";
}       
out.println("<td> <input id='zx' type='text' value='' class='rounded' name='t5' /> </td> </div> </tr>");

%>
<script>
function tot()
{
	var theForm = document.forms["billp"];
	var sc = theForm.elements["zx"];
	var sc1 = theForm.elements["ba"];
	var sc2 = theForm.elements["zy"];
	sc2.value=parseInt(sc.value)+parseInt(sc1.value);
	
		
}
</script>

<%
out.println("<tr> <td align='right'> <div class='line'> <label>Total Amount (To be paid)* </label> </td> ");       
String x16=request.getParameter("t16");
if(x16==null)
{
    x16= "";
}       
out.println("<td> <input id='zy' type='text' value='' class='rounded' name='t16' onclick='tot()'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Amount Given* </label> </td> ");       
String x15=request.getParameter("t15");
if(x15==null)
{
    x15= "";
}       
out.println("<td> <input type='text' value='"+x15+"' class='rounded' name='t15'/> </td> </div> </tr>");


String x6= request.getParameter("t6");
out.println("<tr> <td align='right'> <div class='line'> <label> Card Type* </label> </td>");
out.println("<td> <select name = 't6'>");
String m[]={"Credit card","Debit card"};
if ((x6==null) || x6.equals("Select"))
{
out.println("<option value='Select'>Select</option>");    
}
for(int i=0;i<m.length;i++)
{
    out.println("<option value='"+m[i]+"'");
    
    if(m[i].equals(x6))
    {
        out.println("selected");
    }
    out.println(">"+m[i]+"</option>");
}
out.println("</select> </td> </div> </tr>");


out.println("<tr> <td align='right'> <div class='line'> <label>Card Number* </label> </td> ");       
String x7=r.getString(11);
if(x7==null)
{
    x7= "";
}       
out.println("<td> <input type='text' value='"+x7+"' class='rounded' name='t7'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Card CVV Number* </label> </td> ");       
String x8=request.getParameter("t8");
if(x8==null)
{
    x8= "";
}       
out.println("<td> <input type='text' value='"+x8+"' class='rounded' name='t8'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Card Validity* </label> </td> ");       
String x9=request.getParameter("t9");
if(x9==null)
{
    x9= "";
}       
out.println("<td> <input type='text' value='"+x9+"' class='rounded' name='t9'/> </td> </div> </tr>");


out.println("<tr> <td align='right'> <div class='line'> <label>Payment Date* </label> </td> ");       
String x10=request.getParameter("t10");
if(x10==null)
{
    x10= "";
}       
out.println("<td> <input type='date' value='"+x10+"' class='rounded' name='t10'/> </td> </div> </tr>");



out.println("<td> <input type='hidden' value='"+r.getString(12)+"' class='rounded' name='t12'/> </td> </div> </tr>");
out.println("<td> <input type='hidden' value='"+r.getString(13)+"' class='rounded' name='t13'/> </td> </div> </tr>");
out.println("<td> <input type='hidden' value='"+sz+"' class='rounded' name='t14'/> </td> </div> </tr> </table>");

out.println("<table style='width:100%'> <tr> <td align='center'> <input type='checkbox' id='chkAgree' onclick='goFurther()'>I Agree with the terms and condition </td> </tr> </table>");


out.println("<table style='width:95%'> <br>");
out.println("<td align='right'> <div class='line'><input type='submit' id='btnSubmit' value='Submit' disabled/> </td> </div>");
out.println("<td> <div class='line'><input type='Reset' value='Reset'/> </td> </div> </table> ");



%>
<table style='width:100%'> <tr> <td align='center'> <a href="homepage.jsp" target="_self">Cancel</a>  </td> </tr> </table>  </form> </body> 
<%
count++; 

}
if(count<1)
{
	out.println("<body>>");
	out.println("<br><br><br><br><br><br><br><br><br><br><br><br><br>");
	out.println("<center>");
	out.println("<font color='red'>");
	out.println("<h1>Invalid User ID</h1>");
	out.println("</font>");
	out.println("<a href='designbillpay0.jsp' target='_Self'>Go Back</a>");
	out.println("</center>");
}
List ll2=(List)request.getAttribute("go"); 
if(ll2!=null)
{
	out.println("<center>");
	out.println("<font color='red'>");
	out.println("*"+ll2.get(0));
	out.println("</font>"); 
	out.println("<br>");
	out.println("</center>");
	
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
out.println("<br><br><br><br> <center><div id='footer' >Powered by Namma-Seva &copy; 2016</div></center>");
%>
</html>


