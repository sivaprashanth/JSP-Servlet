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

  <title>Customer Registration</title>
<h1 align="center" style="color:#007acc ; font-family:Cursive; font-size:300%;"> Customer Registration </h1>
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


<%
Random random = new Random();
out.println("<body> <form id='cus' action='Validatorcusreg' method='post'>");

out.println("<table id='table1' style='width:100%'> <tr> <td align='right'> <div class='line'> <label>User ID* </label> </td> ");       
String x15=request.getParameter("t15");
if(x15==null)
{
    x15= "";
}       
out.println("<td> <input type='text' value='"+"CR"+random.nextInt(1000)+"' class='rounded' name='t15'/> </td> </div> </tr>");

out.println(" <tr> <td align='right'> <div class='line'><label>First Name* </label> </td> ") ; 
String x1=request.getParameter("t1");
if(x1==null)
{
    x1= "";
}
out.println("<td> <input type='text' value='"+x1+"' class='rounded' name='t1'/> </td> </div> </tr>")  ;     
          
out.println("<tr> <td align='right'> <div class='line'> <label>Last Name </label> </td> ");       
String x2=request.getParameter("t2");
if(x2==null)
{
    x2= "";
}       
out.println("<td> <input type='text' value='"+x2+"' class='rounded' name='t2'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>DOB* </label> </td> ");       
String x3=request.getParameter("t3");
if(x3==null)
{
    x3= "";
}       
out.println("<td> <input type='date' value='"+x3+"' class='rounded' name='t3'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Address* </label> </td> ");       
String x4=request.getParameter("t4");
if(x4==null)
{
    x4= "";
}       
out.println("<td> <input type='text' value='"+x4+"' class='rounded' name='t4'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Contact* </label> </td> ");       

String x5=request.getParameter("t5");
if(x5==null)
{
    x5= "";
}       
out.println("<td> <input type='text' value='"+x5+"' class='rounded' maxlength='10'  onkeypress='return IsNumeric(event); ' ondrop=' return false;' onpaste='return false;' name='t5'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Email* </label> </td> ");       
String x6=request.getParameter("t6");
if(x6==null)
{
    x6= "";
}       
out.println("<td> <input type='email' value='"+x6+"' class='rounded' name='t6'/> </td> </div> </tr>");

String x7= request.getParameter("t7");
out.println("<tr> <td align='right'> <div class='line'> <label> Gender* </label> </td>");
out.println("<td> <select name = 't7'>");
String m[]={"Male","Female"};
if ((x7==null) || x7.equals("Select"))
{
out.println("<option value='Select'>Select</option>");    
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


%>

<tr>
<td align="right"> <div class="line"> <label>Country* </label> </td>
 <td>     <select id="sel1" name="t8" onchange="giveSelection(this.value)">
         <option value="Select" > Select </option>
         <option value="India"> India </option>
         <option value="USA"> USA </option>
         <option value="Australia"> Australia </option>
      </select> </td> </div>
   </tr>

   <tr>
 <td align="right"> <div class="line"> <label>State* </label> </td>
  <td>    <select id="sel2" name="t9">
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
var sel1 = document.querySelector('#sel1');
var sel2 = document.querySelector('#sel2');
var options2 = sel2.querySelectorAll('option');

function giveSelection(selValue) {
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

out.println("<tr> <td align='right'> <div class='line'> <label>Card Number* </label> </td> ");       
String x10=request.getParameter("t10");
if(x10==null)
{
    x10= "";
}       
out.println("<td> <input type='text' value='"+x10+"' class='rounded' maxlength='16'  onkeypress='return IsNumeric(event); ' ondrop=' return false;' onpaste='return false;' name='t10'> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Card CVV Number* </label> </td> ");       
String x11=request.getParameter("t11");
if(x11==null)
{
    x11= "";
}       
out.println("<td> <input type='text' value='"+x11+"' class='rounded' maxlength='3'  onkeypress='return IsNumeric(event); ' ondrop=' return false;' onpaste='return false;' name='t11'/> </td> </div> </tr>");

out.println("<tr> <td align='right'> <div class='line'> <label>Card Validity* </label> </td> ");       
String x12=request.getParameter("t12");
if(x12==null)
{
    x12= "";
}       
out.println("<td> <input type='text' value='"+x12+"' class='rounded' name='t12'/> </td> </div> </tr>");

%>


<tr> <td align="right"> <div class="line"> <label> Vendor Type* </label> </td>
<td> <select name = "t13" multiple="multiple">
<option value="Select">Select</option>    
<option value="E Bill">E Bill</option>
<option value="Insurance">Insurance</option>
<option value="Tax">Tax</option>
<option value="Telephone Bill">Telephone Bill</option>
</select> </td> </div> </tr>

<%

out.println("<tr> <td align='right'> <div class='line'> <label>Balance* </label> </td> ");       
String x14=request.getParameter("t14");
if(x14==null)
{
    x14= "";
}       
out.println("<td> <input type='text' value='"+x14+"' class='rounded' name='t14'/> </td> </div> </tr>");

%>
<tr>
<td align="right"> <div class="line"> <label>Identification_document*</label> </td>
 <td>    <select id="d1" name="t16" onchange="doc(this)">
        <option value="#"> Select </option>
        <option value="Voter_id"> Voter id</option>
        <option value="Pan_card"> Pan card </option>
        <option value="Passport"> Passport </option>
        <option value="Aadhar_card"> Aadhar card </option>
     </select> </td> </div>
  </tr>

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
<td> <input id="d2" type="text" value="" class="rounded" name="t17" disabled/> </td> </div>
</tr>
<tr>
<td align="right"> <div class="line"> <label>PAN No.* </label> </td>
<td> <input id="d3" type="text" value="" class="rounded" name="t18" disabled/> </td> </div>
</tr>
<tr>
<td align="right"> <div class="line"> <label>Passport No.*</label> </td>
<td> <input id="d4" type="text" value="" class="rounded" name="t19" disabled/> </td> </div>
</tr>
<tr>
<td align="right"> <div class="line"> <label>Date of Issue*</label> </td>
<td> <input id="d5" type="date" value="" class="rounded" name="t20" disabled/> </td> </div>
</tr>
<tr>
<td align="right"> <div class="line"> <label>Date of Expiry*</label> </td>
<td> <input id="d6" type="date" value="" class="rounded" name="t21" disabled/> </td> </div>
</tr>
<tr >
<td align="right"> <div class="line"> <label>Aadhaar No.*</label> </td>
<td> <input id="d7" type="text" value="" class="rounded" name="t22" disabled/> </td> </div>
</tr>




</form>
</div>
</table>





          

  <%

out.println("<table style='width:87%'> <br>");
out.println("<td align='right'> <div class='line'><input type='submit' value='Register'/> </td> </div>");
out.println("<td> <div class='line'><input type='Reset' value='Reset' /> </td> </div> </tr> </table> </form> </body>");

  
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
out.println("<br><center><div id='footer' >Powered by Namma-Seva &copy; 2016</div></center> ");
%>
</html>


