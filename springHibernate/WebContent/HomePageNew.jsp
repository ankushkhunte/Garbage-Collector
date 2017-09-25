<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="springHibernate.Item" %>
<%@page import="springHibernate.Feedback" %>
<%@page import="java.util.List" %>


<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Small Business - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/small-business.css" rel="stylesheet">
    <link href="css/logo-nav.css" rel="stylesheet">
     <link href="css/half-slider.css" rel="stylesheet">
      
     <link rel="stylesheet" href="css/stylesheet.css" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,300,300italic,400italic,600,700,600italic' rel='stylesheet' type='text/css' />
  </head>

  <body>

    <!-- Navigation -->
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" style=" padding-bottom: 40px;" >
      <div class="container">
        <a class="navbar-brand" href="#">
          <img src="http://placehold.it/300x60?text=Logo" width="150" height="30" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="login_user.jsp"><span class="glyphicon glyphicon-user">User</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="vendorregister.jsp"><span class="glyphicon glyphicon-user">Vendor</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="aboutus.jsp">About Us</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="Faq.jsp"><span class="glyphicon glyphicon-question-sign"></span> FAQ</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Page Content -->
    <div class="container" style="
    padding-top: 50px;
    ">
   
      <!-- Heading Row -->
      <header>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item active" style="background-image: url('imgs/download3.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>First Slide</h3>
              <p>This is a description for the first slide.</p>
            </div>
          </div>
          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('imgs/download2.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Second Slide</h3>
              <p>This is a description for the second slide.</p>
            </div>
          </div>
          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('imgs/download1.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Third Slide</h3>
              <p>This is a description for the third slide.</p>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </header>
      <!-- /.row -->

<div id="main_div">
<div id="inner_div">
	<span class="hom-brief">
    If you want to turn junk such as old newspapers, magazines, plastics, e-waste, cardboards, glasses or metals that are lying around into cash,  all you need to do is contact Greenbhoomi. After you schedule a pickup with us, our recycling agent will come to your home or business establishment, weigh the materials using an electronic weighing machine and pay you right away. In short, we are Coimbatore’s most convenient and reliable kayalankadai / paper mart Go ahead and contact us to convert your trash into cash.
    </span>
    
    <div class="hom-rgt">
    <img src="images/leaf-1.png" alt=“” class="quote-leaf1" />
    <h3 class="hom-quote">
    We do not inherit the Earth<br />from our ancestors; we<br />borrow it from our children
    </h3>
    <img src="images/leaf-2.png" alt=“” class="quote-leaf2" />
    <div class="clear"></div>
    <span class="line">&nbsp;</span>
    <em class="quote-name">Native American Proverb</em>
    </div>
</div>
</div>

      <!-- Call to Action Well -->
      <div class="card text-white bg-secondary my-4 text-center" style=" 
    width: 1120px;
    height: 65px;  "
      >
        <div class="card-body" style="
    height: 25px;
        ">
          <p class="text-white m-0">This call to action card is a great place to showcase some important information or display a clever tagline!</p>
        </div>
      </div>

      <!-- Content Row -->
       <div class="row">
  <% HttpSession ses=request.getSession();
List<Item> li=(List<Item>)ses.getAttribute("list");
  for(int i=0;i<li.size();i++)
	  { %> 
     
        <div class="col-md-3 mb-3">
          <div class="card h-100">
            <div class="card-body">
  <h4 class="card-title"><%=li.get(i).getItemName()%></h4>
              <p class="card-text">Vendor Name :<%=li.get(i).getVendorName()%></p>
              <p class="card-text">Item  Price :<%=li.get(i).getItemPrice()%> Rs/kg</p>
              <p class="card-text">    Area    :<%=li.get(i).getArea()%></p>
            </div>
            <div class="card-footer">
              <a href="other.jsp" class="btn btn-primary">Book Appointment</a>
            </div>
          </div>
        </div>
       <% } %>

      </div>
      <!-- /.row -->
<div class="card text-white bg-secondary my-4 text-center" style=" 
    width: 1120px;
    height: 65px;  "
      >
        <div class="card-body" style="
    height: 25px;
        ">
          <p class="text-white m-0"><b>Feedbacks to the different vendors</b> </p>
        </div>
      </div>
      
       <div class="row">
    <% List<Feedback> fi=(List<Feedback>)ses.getAttribute("fblist");
    for(int i=0;i<fi.size();i++)
	  { %>
    
            <div class="col-md-3 mb-2">
          <div class="card h-100">
            <div class="card-body">
            <h5 class="card-title">Vendor Name   :<%=fi.get(i).getVendorName()%></h5>
              <p class="card-text">Feedback      :<%=fi.get(i).getFeedback()%></p>
              <p class="card-text">Description   :<%=fi.get(i).getDescription()%></p>
            </div>
<!--             <div class="card-footer"> -->
<!--               <a href="#" class="btn btn-primary">More Info</a> -->
<!--             </div> -->
          </div>
        </div>
        <% } %>
</div>

</div>    
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-Center text-white"><h1 align="center" style="color: white">Contact Us</h1></p>
        <p class="m-0 text-left text-white">Address : Xyz</p>
        <p class="m-0 text-left text-white">Contact No : +919975984615</p>
        <p class="m-0 text-left text-white">Email      : ankushkhunte25@gmail.com</p>
        <p class="m-0 text-left text-white">   </p>
        <p class="m-0 text-left text-white">   </p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  </body>

</html>
