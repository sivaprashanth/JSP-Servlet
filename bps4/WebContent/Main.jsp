<html>
<head>
<title>Namma-Seva</title>
<style type="text/css">
body {background-color:ffffff;background-image:url("green.jpg");background-size:100% 100%;background-repeat:no-repeat;background-position:top left;background-attachment:fixed;}
*
{
  margin: 0 auto 0 auto;
 text-align:left;}

#page
{
  display: block; 
  height:auto;
  position: relative; 
  overflow: hidden; 

}
.button {
  display: inline-block;
  border-radius: 4px;
  position: relative;
  text-decoration: none;
  background-color: #007fff;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 16px;
  padding: 10px 30px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 4px 2px;
}
.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '»';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
.button2:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
.contentTitle
{
font-size:20px;
margin-bottom:0px;
position: relative;
padding-top:10px;
margin-left:15px;
margin-top:10px;

}

.contentText
{

margin-top:10px;
font-size:16px;
line-height:24px;
margin-left:13px;
position: relative;
margin-right:13px;
padding:20px;
font-family:Florence, cursive;
}
#footer {

height:20px;
position:relative;

text-align:center;
font-size:11px;
font-family:Arial, Helvetica, sans-serif;
color:#386172;
padding-top:5px;	 
}




</style>

</head>


<%out.println("<body> <form action='login.jsp' method='post'>");%>
    <div id="page">
       <center><h1><div style="width:350px;padding:5px;text-align:center;color:#007acc;">NAMMA-SEVA</div></h1></center>
 
	</div>
<div style="text-align:center;padding:30px;"><img src='bps-3.png' width='250' height='150'/><div>

  
        	   <div class="contentTitle" style="text-align:center;color:#009900;"><strong>We value your TIME & MONEY!!!</strong></div>
			<br>
			<div style='color:#e65c00;width:220px;'><marquee behavior="alternate" scrolldelay="80"><font size="5"><b>Our Services</b></font></marquee></div>
			<br>
			<div><marquee scrollamount="9"><img src="tax.jpg" width='200' height='120' /><img src="eb-1.gif" width='200' height='120' /><img src="tele.jpg" width='200' height='120' /><img src="insurance-2.jpg" width='200' height='120' /></marquee></div>
       
		  <div class="contentText">
		  <p align="justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Looking at 'service' from the citizens' point of view, we seeks to redefine citizen services through Namma-Seva, using state-of-the-art technologies. 
It has a clear vision to create a knowledge society by using Information Technology in all aspects of development and governance. 
Pioneering efforts are being made to reach the benefits of IT to the citizens - urban and rural, rich and poor, literate and illiterate.
</p>
<br />
		  <p align="justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Namma-Seva is a leading service provider which aims at providing smart, user-friendly, citizen-centric, ethical, efficient, 
interoperable and provide integrated services facilitated by technology. The initiative involves universal and non-discriminatory delivery of all billing-related 
services to citizens and vendors with improved efficiency.</p>
<br />
        <p align="justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We developed an independent application Bill Payment System (BPS) to automate & manage bill payment mechanism in order 
to monitor and process various billing procedures between the vendors and customers.</p>

</div>
 <br>
          <center><div style="width:350px;text-align:center"><button class='button button2' type='submit' /><span>Engage Now</span></div></center>
		<!--  <center><div style="width:200px;"><a href="bps.html" class="button button2" >Engage Now</a><div></center> -->

  <br><br>
        <center><div id='footer'>Powered by Namma-Seva &copy; 2016</div></center>

</body>
</html>
