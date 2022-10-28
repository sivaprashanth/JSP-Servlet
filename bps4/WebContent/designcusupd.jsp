
<%@page import="model.Pojodbcusupd"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page import="java.sql.ResultSetMetaData"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>


<head>
<script src="http://www.google.com/jsapi" type="text/javascript"></script>
<script type="text/javascript">google.load("jquery", "1.3.2");</script>
 
  <title>Customer Updation</title>
<h1 align="center" style="color:#007acc; font-family:Cursive; font-size:300%;"> Customer Updation </h1>
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
a {font-size: 25px}
  </style>
</head>


<%  Connection co=null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password-1");
	Statement s=co.createStatement();
	String sz=request.getParameter("u1");
    String m1="select * from custom3 where uid2='"+sz+"'";
	ResultSet r= s.executeQuery(m1);
	int count=0;
	//ResultSetMetaData rr=r.getMetaData();
	//int x=rr.getColumnCount();
	//out.println(x);
	//String s1=null;
	while(r.next())
	{
		
		 out.println("<body> <form action='Validatorcusupd' method='post'>");
		 out.println("<table id='table1' style='width:100%'> <tr> <td align='right'> <div class='line'><label>First Name* </label> </td> ") ; 
		 String x1=r.getString(2);
		 if(x1==null)
		 {
		     x1= "";
		 }
		 out.println("<td> <input type='text' value='"+x1+"' class='rounded' name='t1'/> </td> </div> </tr>")  ;     
		           
		 out.println("<tr> <td align='right'> <div class='line'> <label>Last Name </label> </td> ");       
		 String x2=r.getString(3);
		 if(x2==null)
		 {
		     x2= "";
		 }      
		 out.println("<td> <input type='text' value='"+x2+"' class='rounded' name='t2'/> </td> </div> </tr>");

		 out.println("<tr> <td align='right'> <div class='line'> <label>DOB* </label> </td> ");       
		 String x3=r.getString(4);
		 if(x3==null)
		 {
		     x3= "";
		 }      
		 out.println("<td> <input type='date' value='"+x3+"' class='rounded' name='t3'/> </td> </div> </tr>");

		 out.println("<tr> <td align='right'> <div class='line'> <label>Address* </label> </td> ");       
		 String x4=r.getString(5);
		 if(x4==null)
		 {
		     x4= "";
		 }     
		 out.println("<td> <input type='text' value='"+x4+"' class='rounded' name='t4'/> </td> </div> </tr>");

		 out.println("<tr> <td align='right'> <div class='line'> <label>Contact* </label> </td> ");       
		 String x5=r.getString(6);
		 if(x5==null)
		 {
		     x5= "";
		 }     
		 out.println("<td> <input type='text' value='"+x5+"' class='rounded' name='t5'/> </td> </div> </tr>");

		 out.println("<tr> <td align='right'> <div class='line'> <label>Email* </label> </td> ");       
		 String x6=r.getString(7);
		 if(x6==null)
		 {
		     x6= "";
		 }         
		 out.println("<td> <input type='text' value='"+x6+"' class='rounded' name='t6'/> </td> </div> </tr>");
		 
		 String x7= r.getString(8);
		 out.println("<tr> <td align='right'> <div class='line'> <label> Gender* </label> </td>");
		 out.println("<td> <select name = 't7'>");
		 String m[]={"Male","Female"};
		 if ((x7==null) || x7.equals("Select"))
		 {
		 out.println("<option value='Select'>..Select...</option>");    
		 }
		 for(int i=0;i<m.length;i++)
		 {
		     out.println("<option value='"+m[i]+"'");
		     
		     if(m[i].equals(x7))
		     {
		         out.println("selected");
		     }
		     out.println(">"+m[i]+"</option>");
		 }
		 out.println("</select> </td> </div> </tr>");
		
		 String x8= r.getString(9);
		 out.println("<tr> <td align='right'> <div class='line'> <label> Country* </label> </td>");
		 out.println("<td> <select name = 't8'>");
		 String m11[]={"India","USA","Australia"};
		 if ((x8==null) || x8.equals("Select"))
		 {
		 out.println("<option value='Select'>..Select...</option>");    
		 }
		 for(int i=0;i<m11.length;i++)
		 {
		     out.println("<option value='"+m11[i]+"'");
		     
		     if(m11[i].equals(x8))
		     {
		         out.println("selected");
		     }
		     out.println(">"+m11[i]+"</option>");
		 }
		 out.println("</select> </td> </div> </tr>");

		 String x9= r.getString(10);
		 out.println("<tr> <td align='right'> <div class='line'> <label> State* </label> </td>");
		 out.println("<td> <select name = 't9'>");
		 String m2[]={"Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chhattisgarh","Goa","Gujarat","Haryana",
		 		     "Himachal Pradesh","Jammu and Kashmir","Jharkhand","Karnataka","Kerala","Madhya Pradesh","Maharashtra",
		 		     "Manipur","Meghalaya","Mizoram","Nagaland","Odisha","Punjab","Rajasthan","Sikkim","Tamil Nadu",
		 		     "Telangana","Tripura","Uttar Pradesh","West Bengal","New york","Virginia","Missouri","Arizona","Florida",
		 		     "Alaska","Texas","California","Nevada","New jersey","Washington","Ohio","New South Wales","Victoria",
		 		     "Queensland","Western Australia","South Australia","Australian Capital Territory","Tasmania",
		 		     "Northern Territory"};
		 if ((x9==null) || x9.equals("Select"))
		 {
		 out.println("<option value='Select'>..Select...</option>");    
		 }
		 for(int i=0;i<m2.length;i++)
		 {
		     out.println("<option value='"+m2[i]+"'");
		     
		     if(m2[i].equals(x9))
		     {
		         out.println("selected");
		     }
		     out.println(">"+m2[i]+"</option>");
		 }
		 out.println("</select> </td> </div> </tr>");
		 
		 out.println("<tr> <td align='right'> <div class='line'> <label>Card Number* </label> </td> ");       
		 String x10=r.getString(11);
		 if(x10==null)
		 {
		     x10= "";
		 }       
		 out.println("<td> <input type='text' value='"+x10+"' class='rounded' name='t10'/> </td> </div> </tr>");

		 out.println("<tr> <td align='right'> <div class='line'> <label>Card CVV Number* </label> </td> ");       
		 String x11=r.getString(12);
		 if(x11==null)
		 {
		     x11= "";
		 }       
		 out.println("<td> <input type='text' value='"+x11+"' class='rounded' name='t11'/> </td> </div> </tr>");

		 out.println("<tr> <td align='right'> <div class='line'> <label>Card Validity* </label> </td> ");       
		 String x12=r.getString(13);
		 if(x12==null)
		 {
		     x12= "";
		 }       
		 out.println("<td> <input type='text' value='"+x12+"' class='rounded' name='t12'/> </td> </div> </tr>");

		 String x13= r.getString(14);
		 out.println("<tr> <td align='right'> <div class='line'> <label> Vendor Type* </label> </td>");
		 out.println("<td> <select name = 't13' multiple>");
		 String m3[]={"Tax","E Bill","Insurance","Telephone Bill"};
		 if ((x13==null) || x13.equals("Select"))
		 {
		 out.println("<option value='Select'>..Select...</option>");    
		 }
		 for(int i=0;i<m3.length;i++)
		 {
		     out.println("<option value='"+m3[i]+"'");
		     
		     if(m3[i].equals(x13))
		     {
		         out.println("selected");
		     }
		     out.println(">"+m3[i]+"</option>");
		 }
		 out.println("</select> </td> </div> </tr>");

		 out.println("<tr> <td align='right'> <div class='line'> <label>Balance* </label> </td> ");       
		 String x14=r.getString(15);
		 if(x14==null)
		 {
		     x14= "";
		 }       
		 out.println("<td> <input type='text' value='"+x14+"' class='rounded' name='t14'/> </td> </div> </tr> ");
		 
		 String x16= r.getString(16);
		 out.println("<tr> <td align='right'> <div class='line'> <label> Identification_document* </label> </td>");
		 out.println("<td> <select name = 't16'>");
		 String ms[]={"Voter_id","Pan_card","Passport","Aadhar_card"};
		 if ((x16==null) || x16.equals("Select"))
		 {
		 out.println("<option value='Select'>Select</option>");    
		 }
		 for(int i=0;i<ms.length;i++)
		 {
		     out.println("<option value='"+ms[i]+"'");
		     
		     if(ms[i].equals(x16))
		     {
		         out.println("selected");
		     }
		     out.println(">"+ms[i]+"</option>");
		 }
		 out.println("</select> </td> </div> </tr>"); 
		 
		 %>

		 <script>

		 function doc(obj)
		 {
		 	var theForm = document.forms["cus"];
		     var sc2 = theForm.elements["d2"];
		     var sc3 = theForm.elements["d3"];
		     var sc4 = theForm.elements["d4"];
		     var sc5 = theForm.elements["d5"];
		     var sc6 = theForm.elements["d6"];
		     var sc7 = theForm.elements["d7"];
		     sc2.disabled = obj.value != "Voter_id";
		     sc3.disabled = obj.value != "Pan_card";
		     sc4.disabled = obj.value != "Passport";
		     sc5.disabled = obj.value != "Passport";
		     sc6.disabled = obj.value != "Passport";
		     sc7.disabled = obj.value != "Aadhar_card";
		 }

		 </script>

		 <tr>
		 <td align="right"> <div class="line"> <label>Voter ID No.* </label> </td>
		 <td> <input id="d2" type="text" value="<%=r.getString(17) %>" class="rounded" name="t17"/> </td> </div>
		 </tr>
		 <tr>
		 <td align="right"> <div class="line"> <label>PAN No.* </label> </td>
		 <td> <input id="d3" type="text" value="<%=r.getString(18) %>" class="rounded" name="t18"/> </td> </div>
		 </tr>
		 <tr>
		 <td align="right"> <div class="line"> <label>Passport No.*</label> </td>
		 <td> <input id="d4" type="text" value="<%=r.getString(19) %>" class="rounded" name="t19"/> </td> </div>
		 </tr>
		 <tr>
		 <td align="right"> <div class="line"> <label>Date of Issue*</label> </td>
		 <td> <input id="d5" type="date" value="<%=r.getString(20) %>" class="rounded" name="t20"/> </td> </div>
		 </tr>
		 <tr>
		 <td align="right"> <div class="line"> <label>Date of Expiry*</label> </td>
		 <td> <input id="d6" type="date" value="<%=r.getString(21) %>" class="rounded" name="t21"/> </td> </div>
		 </tr>
		 <tr >
		 <td align="right"> <div class="line"> <label>Aadhaar No.*</label> </td>
		 <td> <input id="d7" type="text" value="<%=r.getString(22) %>" class="rounded" name="t22"/> </td> </div>
		 </tr>
		 
		 <%  
		 out.println("<tr> <input type='hidden' value='"+sz+"' class='rounded' name='t15'/>  </tr> </table>");


		 


		 out.println("<table style='width:110%'> <tr> </tr> <tr> </tr> <tr> </tr> <tr> </tr> <tr>");
		 out.println("<tr> <td align='right'> <div class='line'><input type='submit' value='Update'/> </td> </div> ");
		 
		%>
		 <td> <a href="homepage.jsp" target="_self">Cancel</a>  </td> </tr> </table> </form> </body>
		<%
		 count++;
		
	}
	
	if(count<1)
	{
		out.println("<body> <form action='designcusupd0.jsp' method='post'>");
		out.println("<br><br><br><br><br><br><br><br><br><br><br><br><br>");
		out.println("<center>");
		out.println("<font color='red'>");
		out.println("<h1>Invalid User ID</h1>");
		out.println("</font>");
		out.println("<input type='submit' value='Go back'/>");
		out.println("</center>");
	}
	List ll=(List)request.getAttribute("go2"); 
	if(ll!=null)
	{
		out.println("<center>");
		out.println("<font color='red'>");
		out.println("*"+ll);
		out.println("</font>"); 
		out.println("<br>");
		out.println("</center>");
	}
	List lll=(List)request.getAttribute("go3"); 
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
	