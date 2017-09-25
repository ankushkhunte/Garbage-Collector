<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


  <%@page import="java.util.ArrayList" %>
  <%@page import="java.util.List" %>
   <%@page import="springHibernate.Item" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a" %>

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
      <li><a href="new.jsp">Home</a></li>
      
      <%
      HttpSession ses=request.getSession();
      String name=(String)ses.getAttribute("vendorName");
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
    <p style="Colour:black"><h4><a href="vviewprofile.html">View profile</a></h4></p>
      -------------------------------
      <p style="Colour:black"><h4><a href="displayvendoritem.html" >View Items</a></h4></p>
      
      -------------------------------
      
      <p style="Colour:black"><h4><a href="new.jsp">Item List</a></h4></p>
      -------------------------------
      <p style="Colour:black"><h4><a href="vupdatedetails.html">Update Details</a></h4></p>
      -------------------------------
       <p style="Colour:black"><h4><a href="vviewfeedback.html">Check Feedback</a></h4></p>
        -------------------------------
         <p style="Colour:black"><h4><a href="vviewappoinments.html">See Appoinments</a></h4></p>
        -------------------------------
      
    </div>
    <div class="col-sm-8 text-left"> 
    
<%--     <h3 align="center">${msg}</h3> --%>
      <h1 align="center">Item Info</h1>


<div class="container">
<table id="myTable">
 <tr class="header">
  <th style="width:20%;">Item Name</th>
    <th style="width:20%;">Price</th>
    <th style="width:20%;">Quantity</th>
    <th style="width:20%;">Area</th>
  </tr>

<% 

List<Item> l=(List<Item>)ses.getAttribute("listitem");

for(int i=0;i<l.size();i++) { %>
   <tr>

        <td><%=l.get(i).getItemName()%> </td>  <td><%=l.get(i).getItemPrice()%> </td><td><%=l.get(i).getItemQuantity()%> </td><td><%=l.get(i).getArea()%> </td>
    
    </tr>
<% } %>
</table>
</div>
<!--     <div class="col-sm-2 sidenav"> -->
<!--       <div class="well"> -->
      
<!--       </div> -->
<!--       <div class="well"> -->
     
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!-- </div> -->

<!-- <footer class="container-fluid text-center"> -->
<!--   <p>Footer Text</p> -->
<!-- </footer> -->

</body>
</html>
        