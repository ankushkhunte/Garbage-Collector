<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="a/js/jquery-3.2.1.min.js"></script>
  <script src="a/js/bootstrap.min.js"></script>
  <script src="a/js/jquery-3.2.1.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/stylesheet.css" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,300,300italic,400italic,600,700,600italic' rel='stylesheet' type='text/css' />
<link rel="icon" href="favicon.ico" type="image/x-icon" />
  
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
 
    }
    .navbar-header {
     
   min-height: 100px; 
   } 
    
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }

* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;
  width: 75%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: center;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}


</style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <p></p>
      <h1><a class="navbar-brand" href="#">Go Clean...</a></h1>
    </div>
    <p></p>
    
    
    
    <ul class="nav navbar-nav navbar-right">
<%--     <li><a href="#">TOUR</a></li> --%>
      <li><a href="index.jsp">Home</a></li>
      
      
      
     
<%--       <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> --%>
       <li><a href="login_user.jsp"><span class="glyphicon glyphicon-user"></span> User </a></li>
        <li><a href="vendorregister.jsp"><span class="glyphicon glyphicon-user"></span> Vendor</a></li>
<!--       <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li> -->
        <li><a href="aboutus.jsp">About Us</a></li>
      <li><a href="faq.jsp"><span class="glyphicon glyphicon-question-sign"></span> FAQ</a></li>
    </ul>
   
					
				 
			
  </div>
</nav>
<div id="innBanner">
<div id="inner_div">
	<div class="faqhd">
	<img src="images/faq-hdimg.png" class="faqhd-img" />
    <h2 class="faq-hdtxt">FREQUENTLY ASKED<br />QUESTIONS</h2>
    </div>
</div>
</div>


<div id="main_div">
<div id="inner_div">
    <div class="abtLeft">

<p>  
<span class="faqgrnTxt">Why should we sell our recyclable waste to Greenbhoomi?</span>
</p>
<div class="quest-ans-div">
<img src="images/faq-contimg1.jpg" alt=“Greenbhoomi Convenience”/>
<h5>Convenience</h5>
<p>All you have to do is contact us and we will pick up the recyclable waste at your doorstep.</p>
</div>

<div class="quest-ans-div rgtnone">
<img src="images/faq-contimg2.jpg" alt=“Greenbhoomi Accurate Weighing”/>
<h5>Accurate weighing</h5>
<p>We use an accurate electronic weighing machine right in front of you. No manipulation.</p>
</div>

<div class="quest-ans-div">
<img src="images/faq-contimg3.jpg" alt=“Greenbhoomi Instant Payment”/>
<h5>Instant payment</h5>
<p>We pay you immediately for the waste based on the total amount calculated using our <a href="pricelist.html" class="alink"><strong>price list&gt;&gt;</strong></a></p>
</div>

<div class="quest-ans-div rgtnone">
<img src="images/faq-contimg4.jpg" alt=“Greenbhoomi Environmental Impact”/>
<h5>Environmental Impact</h5>
<p>Being a socially conscious company, we make sure all the waste collected is recycled responsibly.</p>
</div>


</div>


<div class="abtLeft lftmarg">
	<p>
    <span class="faqgrnTxt">What do you do with the waste after it is picked up from my place?</span><br /><br />
    The waste is taken to our warehouse and segregated. Then it is sold directly to the recycler or to the 1st level wholesale recycling agent.<br /><br />

	<span class="faqgrnTxt">We have huge amounts of garbage piled up in our neighborhood. Do you collect garbage?</span><br /><br />

We only collect recyclable waste that is source segregated at households and business establishments. If you have garbage problem in your area, please contact the Coimbatore Corporation <a href="http://www.ccmc.gov.in" style="color:black; text-decoration:none;" target="_blank">www.ccmc.gov.in</a> or your local body councillor.<br /><br />

<span class="faqgrnTxt">Will you share my contact details with other companies?</span><br /><br />

No.<br /><br />

<span class="faqgrnTxt">When will your service be available in our area?</span><br /><br />

We are gradually expanding our reach across Coimbatore. If your area isn’t covered by us now, please leave your contact number and area details in the 
<a href="feedback.php" class="alink">feedback</a> page. We will contact you as soon as we start servicing your area.<br /><br />

<span class="faqgrnTxt">What time and days of the week can I call Greenbhoomi and schedule a pickup?</span><br /><br />

While our call centre works Monday-Saturday 10AM to 6PM, our door-to-door pickup service is available Tuesday-Sunday 10AM to 6PM. <br /><br />
</p>
</div>
</div>
</div>

<div id="footer">
<div id="inner_div">
	<div class="ft-grnflr-div">
    <h3>Helpful tips!</h3>
    <p>Buy products that are made with recycled materials.</p>
    </div>
    
    <div class="ft-grnflr-div">
    <h3>Did you know?</h3>
    <p> Approximately 1 billion seabirds and mammals die each year by ingesting plastic bags.</p>
    </div>
    
</div>
</div>





    </body>
    </html>