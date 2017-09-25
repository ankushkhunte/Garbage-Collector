<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page import="springHibernate.Appointment" %>
     <%@page import="java.util.ArrayList" %>
  <%@page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="a/js/jquery-3.2.1.min.js"></script>
  <script src="a/js/bootstrap.min.js"></script>
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
  width: 85%;
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
      <li><a href="welcome.jsp">User Home</a></li>
      
      <%
      HttpSession ses=request.getSession();
      String name=(String)ses.getAttribute("username");
      %>
      
     
<%--       <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> --%>
<!--        <li><a href="login_user.jsp"><span class="glyphicon glyphicon-user"></span> User </a></li> -->
        <li><a href="#"><span class="glyphicon glyphicon-user"></span>Welcome <%=name %></a></li>
      <li><a href="index.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        <li><a href="aboutus.jsp">About Us</a></li>
      <li><a href="faq.jsp"><span class="glyphicon glyphicon-question-sign"></span> FAQ</a></li>
    </ul>
   
					
				 
			
  </div>
</nav>
  
 <div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
    <p style="Colour:black"><h4><a href="uviewprofile.html">View profile</a></h4></p>
      -------------------------------
     <p style="Colour:black"><h4><a href="welcome.jsp">Item List</a></h4></p>
      -------------------------------
      <p style="Colour:black"><h4><a href="uviewbookedappoinment.html">Booked Appointments</a></h4></p>
        -------------------------------
      
     
      <p style="Colour:black"><h4><a href="ufeedback.html">Give Feedback</a></h4></p>
      -------------------------------
      
    </div>
    
    
    <div class="container">
    <h1 align="center">Booked Appointment Details</h1>
    <h1></h1>
      <h1></h1>
      
<table id="myTable">
 <tr class="header">
 <th style="width:20%;">Booking Date</th>
 <th style="width:20%;">Vendor Name</th>
  <th style="width:20%;">Item Name</th>
   <th style="width:20%;">Quantity</th>
    <th style="width:20%;">Price / kg</th>
   
    <th style="width:20%;">Time</th>
  </tr>
  
 <% 

List<Appointment> l=(List<Appointment>)ses.getAttribute("bl");

for(int i=0;i<l.size();i++) { %>
   <tr>

        <td><%=l.get(i).getBdate()%></td><td><%=l.get(i).getVendorName()%> </td>  <td><%=l.get(i).getItemName()%> </td><td><%=l.get(i).getQtyRange()%> </td><td><%=l.get(i).getPrice()%> </td><td><%=l.get(i).getTime()%></td>
    
    </tr>
<% } %>
</table>
</div>
    
    </body>
</html>
