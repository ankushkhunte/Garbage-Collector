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
    <%
    String iname=(String)ses.getAttribute("bitemname");
    String vname=(String)ses.getAttribute("bvname");
    String price=(String)ses.getAttribute("bprice");
    String area=(String)ses.getAttribute("barea");
    String qty=(String)ses.getAttribute("bqty");
    
    
    
    %>
     <div class="col-sm-8 text-left"> 
      
      <h2></h2>

<form action="finalbookappointment.html" id="myform" >
<table id="myTable">
  <tr>
  <th style="width:40%;" colspan="2"><h2>Appointment Details</h2></th>
  </tr>
 
     <tr>
    <td><h4>Enter Full Name</h4></td>
    <td><input type="text" name="fname"  required></td> 
    
    
    </td>
  </tr>
  <tr>
    <td><h4>Item Name</h4></td>
    <td><input type="text" name="iname" value="<%=iname%>" readonly="readonly"></td> 
    
    
    </td>
  </tr>
  <tr>
    <td><h4>vendor Name</h4></td>
    <td><input type="text" name="vname" value="<%=vname%>" readonly="readonly"></td> 
    
    
    </td>
    </tr>
    <tr>
    <td><h4>Price/kg</h4></td>
    <td><input type="text" name="price" value="<%=price%>" readonly="readonly"></td> 
    
    
    </td>
    </tr>
    <tr>
    <td><h4>Quantity Range</h4></td>
    <td><input type="text" name="qty" value="<%=qty%>" readonly="readonly"></td> 
    
    
    </td>
    </tr>
    <tr>
    <td><h4>Area</h4></td>
    <td><input type="text" name="area" value="<%=area%>" readonly="readonly"></td> 
    
    
    </td>
    </tr>
    <tr>
    <td><h4>Select Date</h4></td>
    <td><input type="date" name="bdate" min="2017-06-03" required></td> 
    
    
    </td>
    </tr>
     <tr>
    <td><h4>Select Time</h4></td>
    <td><input type="time" name="time" min="08:00" max="19:00" required></td> 
    
    
    </td>
    </tr>
    
    <tr>
    <td><h4>Provide Address</h4></td>
    <td><textarea name="address" form="myform" required></textarea> </td> 
    
    
    </td>
    </tr>
  
  <tr>
    <td colspan="3"><input type="submit" value="Book Appointment"></td>

  </tr>
</table>
</form>


</body>
</html>
    