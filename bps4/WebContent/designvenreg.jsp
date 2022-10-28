<%@page import="java.util.Random"%>
<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>

<html>
<head>

<script src="http://www.google.com/jsapi" type="text/javascript"></script>
<script type="text/javascript">google.load("jquery", "1.3.2");</script>
 <span id="error" style="color: Red; display: none"></span>
    <script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        function IsNumeric(e) {
            var keyCode = e.which ? e.which : e.keyCode
            var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1 || keyCode == 46);
            document.getElementById("error").style.display = ret ? "none" : "inline";
            return ret;
        }
        </script>
  <title>Vendor Registration</title>
<h1 align="center" style="color:#007acc ; font-family:Cursive; font-size:300%;"> Vendor Registration </h1>
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
  </style>
</head>


<%Random random = new Random();
out.println("<body> <form id='formed' action='Validatorvenreg' method='post'>");
out.println("<table id='table1' style='width:100%'>"); 
%>
<tr>
<td align="right"> <div class="line"> <label>Vendor Type* </label> </td>
 <td>     <select id="sel1" name="t1" onchange="giveSelection1(this.value)">
         <option value="Select"> Select </option>
         <option value="Tax"> Tax </option>
         <option value="E-Bill"> E-Bill </option>
         <option value="Insurance"> Insurance </option>
         <option value="Telephone Bill"> Telephone Bill </option>
      </select> </td> </div>
   </tr>

   <tr>
 <td align="right"> <div class="line"> <label>Vendor Name* </label> </td>
  <td>    <select id="sel2" name="t2">
         <option value="Select"> Select </option>
         <option value="House Tax" data-option="Tax"> House Tax </option>
         <option value="Personal Income Tax" data-option="Tax"> Personal Income Tax </option>
         <option value="Water Tax" data-option="Tax"> Water Tax </option>
         <option value="Tata Power" data-option="E-Bill"> Tata Power </option>
         <option value="Reliance Power" data-option="E-Bill"> Reliance Power </option>
         <option value="TANGEDCO" data-option="E-Bill"> TANGEDCO </option>
         <option value="Tneb" data-option="E-Bill"> TNEB </option>
         <option value="HDFC ERGO General" data-option="Insurance"> HDFC ERGO General </option>
         <option value="Birla Sun Life" data-option="Insurance"> Birla Sun Life </option>
         <option value="LIC India" data-option="Insurance"> LIC India </option>
         <option value="ICICI PRO Life" data-option="Insurance"> ICICI PRO Life </option>
         <option value="Kotak Life" data-option="Insurance"> Kotak Life </option>
         <option value="Airtel" data-option="Telephone Bill"> Airtel </option>
         <option value="BSNL" data-option="Telephone Bill"> BSNL </option>
         <option value="Vodafone" data-option="Telephone Bill"> Vodafone </option>
         <option value="Aircel" data-option="Telephone Bill"> Aircel </option>
         <option value="Tata Docomo" data-option="Telephone Bill"> Tata Docomo </option>
         <option value="Idea" data-option="Telephone Bill"> Idea </option>
         <option value="Reliance" data-option="Telephone Bill"> Reliance </option>
         <option value="MTS" data-option="Telephone Bill"> MTS </option>

      </select> </td> </div>
   </tr>

<script type="text/javascript">
var sel1 = document.querySelector('#sel1');
var sel2 = document.querySelector('#sel2');
var options2 = sel2.querySelectorAll('option');

function giveSelection1(selValue) {
sel2.innerHTML = '';
for(var i = 0; i < options2.length; i++) {
if(options2[i].dataset.option === selValue) {
sel2.appendChild(options2[i]);
}
}
}
giveSelection(sel1.value);
</script>  

<%
out.println("<tr> <td align='right'> <div class='line'> <label>Address* </label> </td> ");       
String x3=request.getParameter("t3");
if(x3==null)
{
    x3= "";
}       
out.println("<td> <input type='text' value='"+x3+"' class='rounded' name='t3'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Contact* </label> </td> ");       
String x4=request.getParameter("t4");
if(x4==null)
{
    x4= "";
}       
out.println("<td> <input type='text' value='"+x4+"' class='rounded' maxlength='10' onkeypress='return IsNumeric(event); ' ondrop=' return false;' onpaste='return false;' name='t4'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Email* </label> </td> ");       
String x5=request.getParameter("t5");
if(x5==null)
{
    x5= "";
}       
out.println("<td> <input type='email' value='"+x5+"' class='rounded' name='t5'/> </td> </div> </tr>");

%>

<tr>
<td align="right"> <div class="line"> <label>Country* </label> </td>
 <td>     <select id="sel3" name="t6" onchange="giveSelection(this.value)">
         <option value="Select"> Select </option>
         <option value="India"> India </option>
         <option value="USA"> USA </option>
         <option value="Australia"> Australia </option>
      </select> </td> </div>
   </tr>

   <tr>
 <td align="right"> <div class="line"> <label>State* </label> </td>
  <td>    <select id="sel4" name="t7">
         <option value="Select"> Select </option>
         <option value="Andhra Pradesh" data-option="India"> Andhra Pradesh </option>
         <option value="Arunachal Pradesh" data-option="India"> Arunachal Pradesh </option>
         <option value="Assam" data-option="India"> Assam </option>
         <option value="Bihar" data-option="India"> Bihar </option>
         <option value="Chhattisgarh" data-option="India"> Chhattisgarh </option>
         <option value="Goa" data-option="India"> Goa </option>
         <option value="Gujarat" data-option="India"> Gujarat </option>
         <option value="Haryana" data-option="India"> Haryana </option>
         <option value="Himachal Pradesh" data-option="India"> Himachal Pradesh </option>
         <option value="Jammu and Kashmir" data-option="India"> Jammu and Kashmir </option>
         <option value="Jharkhand" data-option="India"> Jharkhand </option>
         <option value="Karnataka" data-option="India"> Karnataka </option>
         <option value="Kerala" data-option="India"> Kerala </option>
         <option value="Madhya Pradesh" data-option="India"> Madhya Pradesh </option>
         <option value="Maharashtra" data-option="India"> Maharashtra </option>
         <option value="Manipur" data-option="India"> Manipur </option>
         <option value="Meghalaya" data-option="India"> Meghalaya </option>
         <option value="Mizoram" data-option="India"> Mizoram </option>
         <option value="Nagaland" data-option="India"> Nagaland </option>
         <option value="Odisha" data-option="India"> Odisha </option>
         <option value="Punjab" data-option="India"> Punjab </option>
         <option value="Rajasthan" data-option="India"> Rajasthan </option>
         <option value="Sikkim" data-option="India"> Sikkim </option>
         <option value="Tamil Nadu" data-option="India"> Tamil Nadu </option>
         <option value="Telangana" data-option="India"> Telangana </option>
         <option value="Tripura" data-option="India"> Tripura </option>
         <option value="Uttar Pradesh" data-option="India"> Uttar Pradesh </option>
         <option value="Uttarakhand" data-option="India"> Uttarakhand </option>
         <option value="West Bengal" data-option="India"> West Bengal </option>
         <option value="New york" data-option="USA"> New york </option>
 		 <option value="Virginia" data-option="USA"> Virginia </option>
 		 <option value="Missouri" data-option="USA"> Missouri </option>
 		 <option value="Arizona " data-option="USA"> Arizona </option>
 	 	 <option value="Florida" data-option="USA"> Florida </option>
 		 <option value="Alaska" data-option="USA"> Alaska </option>
 		 <option value="Texas" data-option="USA"> Texas </option>
 		 <option value="California" data-option="USA"> California </option>
 		 <option value="Nevada" data-option="USA"> Nevada </option>
 		 <option value="New jersey" data-option="USA"> New jersey </option>
 		 <option value="Washington" data-option="USA"> Washington </option>
 		 <option value="Ohio" data-option="USA"> Ohio </option>
         <option value="New South Wales" data-option="Australia"> New South Wales </option>
 		 <option value="Victoria" data-option="Australia"> Victoria </option>
 		 <option value="Queensland" data-option="Australia">  Queensland</option>
 		 <option value="Western Australia" data-option="Australia">  Western Australia</option>
 		 <option value="South Australia" data-option="Australia">  South Australia</option>
 		 <option value="Australian Capital Territory" data-option="Australia">  Australian Capital Territory</option>
	 	 <option value="Tasmania" data-option="Australia">  Tasmania</option>
 		 <option value="Northern Territory" data-option="Australia">  Northern Territory</option> 


      </select> </td> </div>
   </tr>

<script>
var sel3 = document.querySelector('#sel3');
var sel4 = document.querySelector('#sel4');
var options3 = sel4.querySelectorAll('option');

function giveSelection(selValue) {
sel4.innerHTML = '';
for(var i = 0; i < options3.length; i++) {
if(options3[i].dataset.option === selValue) {
sel4.appendChild(options3[i]);
}
}
}
giveSelection(sel3.value);
</script>

<% 


out.println("<tr> <td align='right'> <div class='line'> <label>Web Address* </label> </td> ");       
String x8=request.getParameter("t8");
if(x8==null)
{
    x8= "";
}       
out.println("<td> <input type='text' value='"+x8+"' class='rounded' name='t8'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Certificate Issue Date* </label> </td> ");       
String x9=request.getParameter("t9");
if(x9==null)
{
    x9= "";
}       
out.println("<td> <input id='aw' type='date' value='"+x9+"' class='rounded' name='t9' onchange='abcd()'/> </td> </div> </tr>");

%>
<script>
function abcd()
{
	var theForm = document.forms["formed"];
	var sc = theForm.elements["aw"];
	var sc1 = theForm.elements["aws"];
	if(sc.value!=null)
	{
		var da = new Date(sc.value);
		da.setFullYear(da.getFullYear()+15);

		var curr_date =  ("0" + (da.getDate())).slice(-2)
		var curr_month = ("0" + (da.getMonth() + 1)).slice(-2)
		var curr_year = da.getFullYear();

		sc1.value = curr_month + "-" + curr_date + "-" + curr_year;
	}
}
</script>


<%
out.println("<tr> <td align='right'> <div class='line'> <label>Certificate Valid Date* </label> </td> ");       
String x10=request.getParameter("t10");
if(x10==null)
{
    x10= "";
}       
out.println("<td> <input id='aws' type='text' value='' class='rounded' name='t10'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Employee Count* </label> </td> ");       
String x11=request.getParameter("t11");
if(x11==null)
{
    x11= "";
}       
out.println("<td> <input type='text' value='"+x11+"' class='rounded' onkeypress='return IsNumeric(event); ' ondrop=' return false;' onpaste='return false;' name='t11'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Customer Count* </label> </td> ");       
String x12=request.getParameter("t12");
if(x12==null)
{
    x12= "";
}       
out.println("<td> <input type='text' value='"+x12+"' class='rounded' onkeypress='return IsNumeric(event); ' ondrop=' return false;' onpaste='return false;' name='t12'/> </td> </div> </tr>");   

%>
<tr> <td align='right'> <div class='line'> <label>Year of Establishment* </label> </td>      
<td> <input type='text' id='sel3' value='' class='rounded'  onkeypress='return IsNumeric(event); ' ondrop=' return false;' onpaste='return false;' name='t13' onkeyup='getQuantity1()'/> </td> </div> </tr>

<tr> <td align='right'> <div class='line'> <label>Years of Survival* </label> </td>       
<td> <input type='text' id='sel4' value='' class='rounded' name='t15' /> </td> </div> </tr>

<tr> <td align='right'> <div class='line'> <label>Certificate* </label> </td>       
<td> <input type='text' id='sel5' value='' class='rounded' name='t16' /> </td> </div> </tr>


<script>
function getQuantity1()
{
    
	var theForm = document.forms["formed"];
    var sc = theForm.elements["t13"];
    var sc1 = theForm.elements["t15"];
    var sc2 = theForm.elements["t11"];
    var sc3 = theForm.elements["t16"];
    var d = new Date();
    var n = d.getFullYear();
    if(sc.value!=null)
    {
    	sc1.value = n-parseInt(sc.value);
    }
    
    if((sc1.value>=1) & (sc1.value<5) & (sc2.value>=30) & (sc2.value<50))
	{
		sc3.value="A+";
	}
	else if((sc1.value>=5) & (sc1.value<10) & (sc2.value>=50) & (sc2.value<75))
	{
		sc3.value="B+";
	}
	else if((sc1.value>=10) & (sc1.value<15) & (sc2.value>=75) & (sc2.value<100))
	{
		sc3.value="C+";
	}
	else if((sc1.value>=15) & (sc1.value<25) & (sc2.value>=100) & (sc2.value<200))
	{
		sc3.value="D+";
	}
	else if((sc1.value>=25) & (sc1.value<50) & (sc2.value>=200) & (sc2.value<500))
	{
		sc3.value="E+";
	}
	else if((sc1.value>=50) & (sc2.value>=500))
	{
		sc3.value="F+";
	}
    
}
</script>


<%

out.println("<tr> <td align='right'> <div class='line'> <label>Vendor ID* </label> </td> ");       
String x14=request.getParameter("t14");
if(x14==null)
{
    x14= "";
}       
out.println("<td> <input type='text' value='"+"VR"+random.nextInt(1000)+"' class='rounded' name='t14'/> </td> </div> </tr> </table>");  


out.println("<table style='width:87%'> <br>");
out.println("<td align='right'> <div class='line'><input type='submit' value='Register'/> </td> </div>");
out.println("<td> <div class='line'><input type='Reset' value='Reset'/> </td> </div> </tr> </table> </form> </body>");

  
List ll=(List)request.getAttribute("go"); 
if(ll!=null)
{
	out.println("<center>");
	out.println("<font color='red'>");
	out.println("*"+ll.get(0));
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
out.println("<br><center><div id='footer' >Powered by Namma-Seva &copy; 2016</div></center> ");
%>
</html>


