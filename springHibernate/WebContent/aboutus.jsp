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
  <meta name=“description” content=“About Greenbhoomi’s origin. A company that cares for the community. Why recycling? Why effective solid waste management is necessary?”>
<link rel="stylesheet" href="css/stylesheet.css" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,300,300italic,400italic,600,700,600italic' rel='stylesheet' type='text/css' />
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
		<p class="headertext">Greenbhoomi was started with the intent<br />
 of reducing the impact of an increasingly<br />
 consumeristic society on our environment, and finding a solution to the ever growing garbage disposal problem.
		</p>
        
        <div class="border">  </div>
</div>
</div>


<div id="main_div">
<div id="inner_div">
    <div class="abtLeft">

<p>Remember the good old days when kids used slates, teenagers shopped for clothes only for birthdays, Deepavali, Ramzan or Christmas, and we bought televisions and other electronic items that lasted decades!? Nowadays, kids use notebooks, teenagers update their entire wardrobe every 6 months because of ever changing fashion, and we replace our televisions, cellphones, tablets and other electronic devices every couple of years. This new change in behaviour has led to depletion of our natural resources at an alarming rate. <br /> <br />

  <span class="abtgrnTxt">The best way to tackle this issue is to follow the <br />3 R’s of environmental conservation: </span>
</p>



<div class="textimgdiv">
<h3>REDUCE</h3>
<img src="images/reduce.jpg" alt="Reduce” class=" reduceimg" />
</div>

<div class="textimgdiv">
<h3 class="reuse">REUSE</h3>
<img src="images/reuse.jpg" alt=“Reuse” class="reuseimg" />
</div>


<div class="textimgdiv" style="margin-right:0;">
<h3 class="reuse"> RECYCLE </h3>
<img src="images/recycle.jpg" alt=“Recycle” class="reuseimg" />
</div>

<p><br /><br />
<span class="abtgrnTxt">Here’s some helpful links on the 3 R’s:</span><br /><br />
<a href="http://www.nrdc.org/thisgreenlife/0802.asp" class="webaddresstext">www.nrdc.org/thisgreenlife/0802.asp</a><br />
<a href="http://www.factmonster.com/ipka/A0775891.html" class="webaddresstext">www.factmonster.com/ipka/A0775891.html</a><br />
<a href="http://www.dnr.mo.gov/env/swmp/pubs-reports/threers.htm" class="webaddresstext">www.dnr.mo.gov/env/swmp/pubs-reports/threers.htm</a><br />
<a href="http://www.egtrashrecycleservices.org/recycling-tips.asp " class="webaddresstext">www.egtrashrecycleservices.org/recycling-tips.asp </a><br /><br />
<span class="abtgrnTxt">While the first 2 R’s require behavioural and lifestyle changes, we at Greenbhoomi are here to help you with the third R - Recycle. </span>
</p>

</div>


<div class="abtLeft lftmarg">
<img src="images/abt-img.png" alt=“landfill problem” class="abt-img" />
	<p>
    Our Coimbatore city has an unenviable history when it comes to garbage disposal. In the past, Coimbatore’s dump yard used to be based in Kavundampalayam. Due to constant health issues faced by the people in that densely populated area, the dump yard was moved to Vellalore. Now the residents of Vellalore and its neighbouring areas are facing severe health issues such as malaria, tuberculosis, asthma and other lung diseases. Not only that, improper disposal of waste such as plastic, paper and glass clogs our sewages, destroys our river systems and pollutes the air we all breathe. <br /><br />

<span class="abtgrnTxt">The best solution to the garbage disposal problem is source segregation of waste. If all the recyclable waste can be segregated at source (households and businesses) and recycled responsibly, then much less harmful waste will end up in landfills. This is the basic operating principle behind Greenbhoomi. <br /><br />

As we all know, Coimbatore is one of the most beautiful cities to live in. So we encourage you to partner with us to keep it that way.</span>
</p>
</div>
</div>
</div>




<div id="footer">
<div id="inner_div">
	<div class="ft-grnflr-div">
    <h3>Helpful tips!</h3>
    <p>Print black and white and on both sides of a paper.</p>
    </div>
     <div class="ft-grnflr-div">
    <h3>Did you know?</h3>
    <p> 570g of waste is generated by each Coimbatorian per day!</p>
    </div>
    
</div>
</div>

</body>
</html>