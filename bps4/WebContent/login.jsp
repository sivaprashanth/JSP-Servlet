<html>
  <head>

  
  <script src="http://www.google.com/jsapi" type="text/javascript"></script>
<script type="text/javascript">google.load("jquery", "1.3.2");</script>
  
  <title>NAMMA-SEVA (Admin) - Login User</title>
<link rel="icon" href="bps-3.jpg" type="images/jpg" />
<style type="text/css">
body {background-color:ffffff;background-image:url("bg-13-1.jpg");background-size:100% 100%;background-repeat:no-repeat;background-position:top left;background-attachment:fixed;}
h1{font-size:50px;color:000000;}
p {font-family:Times;font-size:22px;font-style:normal;font-weight:normal;color:000000;}
.button {
    background-color: #007fff;
    border: none;
    color: white;
    padding: 8px 30px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.button2:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
	
}
#footer {

height:20px;
text-align:center;
font-size:11px;
font-family:Arial, Helvetica, sans-serif;
color:#386172;
padding-top:5px;	 
}
</style>

</head>
    

  <script src="/static/bundle-bundle_login_defer.js" type="text/javascript" ></script>
<script>
window.history.forward(1);
function startTime() {
	
    var today = new Date();
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
var d = today.getDate();
var M=today.getMonth()+1;
var y=y=today.getYear()-100+2000;
    m = checkTime(m);
    s = checkTime(s);
    document.getElementById('txt').innerHTML =
    h + ":" + m + ":" + s+" &nbsp; "+d+"/"+M+"/"+y;
    var t = setTimeout(startTime, 500);
}
function checkTime(i) {
    if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}
function myFunction() {
	
    alert("welcome to namma seva");
}
</script>



<%out.println("<body> <form action='Validator' method='post'>");  

out.println("<body onload='startTime()'>");
out.println("</ul></div><br /><br />");
out.println("<div class='container' id='mainPageContent'>");   
out.println("<center><img src='bps-3.png' style='border-radius:15px' width='250' height='150'/></center>");
out.println("<br /><br /><br><br /><br />");
out.println("<center><div class=' panel panel-primary' style='border-radius:20px;border:none; width:350px;box-shadow: 2px 3px 10px 2px #333;''><center>");
out.println("<div class='panel-heading blueGradient' style='border-radius:20px 20px 0px 0px;'>");
  
out.println("<h3><table style='color:#000000;margin:5px;font-size:200%;'><tr><td align=right style='color:#007acc;'><b>NAMMA</b></td><td align=center style='color:#009900;'><b>-</b></td><td align=right style='color:#e65c00;'><b>SEVA</b></td></tr></table></h3>");
//out.print("<h3 style='text-align:center;color:#000000;margin:5px;font-size:200%;'>NAMMA-SEVA </h3>");
out.println("<br /></div>");                

String x1=request.getParameter("email");
if(x1==null)
{
    x1= "";
}
out.println("<label>Username</label> &nbsp;&nbsp; <input type='text' name='email' value='"+x1+"' placeholder='Username' style='width:175' id='email' />");
out.println("<br>");
String x2=request.getParameter("password");
if(x2==null)
{
    x2= "";
}      
out.println("<br><label>Password</label> &nbsp;&nbsp; <input type='password' name='password' value='' placeholder='Password' style='width:175' id='password' />");
out.println("<br><br><br>");
out.println("<center><input class='button button2' type='submit' value='login'/></center>" ); 
out.println("<br>");
out.println("</div> </div></div></div><br />");

String sz1=(String)request.getAttribute("val");
if(sz1!=null)
{
	out.println("<center><font color='red'><b>");
	out.println(sz1);
	out.println("</b></font></center>");
}
out.println("<br /><br><br><br>");
out.println("<center><div id='txt' align='center' style='font-weight:bold;border-radius:5px;font-size:25px;color:#000000;width:250px;box-shadow: 2px 3px 10px 2px #333;'></div></center>");

out.println("<br><br><br><br><br><br><br><br><br /><br>");
out.println("<center><div id='footer' style='box-shadow: 1px 1px 2px 1px #333;'>Powered by Namma-Seva &copy; 2016</div></center> </form> </body>");
 %>
</html>
