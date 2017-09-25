<%@page import="java.util.ArrayList" %>
  <%@page import="java.util.List" %>
   <%@page import="springHibernate.Item" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="a/js/jquery-3.2.1.min.js"></script>
  <script src="a/js/bootstrap.min.js"></script>
  
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
    
    /* Set gray background color and 100% height */
    
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
        
    /* On small screens, set height to 'auto' for the grid */
   
      .row.content {height: auto;} 
      
    }
     
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
    .btn {
  
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
body {
    margin-top: 20px;
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
      List<String> m=(List<String>)ses.getAttribute("mob");
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
       <p style="Colour:black"><h4><a href="demo.jsp">Back To Vendor</a></h4></p>
      -------------------------------
     
        </div>
<div class="container">
    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <address>
                        <h1>Go Clean</h1>
                        </br>                     
                        <table>
                        <tr><td>UserName :</td><td> <%=request.getParameter("fname")%></td></tr>
                    
                          <tr><td>MobNo : </td><td><%=m.get(0) %></td></tr>
                           <tr><td>Email : </td><td><%=m.get(1) %></td></tr>
                        </table>
                        
                     
                        <br>
                       
                    </address>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                       <em>Appointment Id: 01</em>
                    </p>
                    <p>
                         </br>                     
                        <table align="right">
                        <tr><td>VendorName :  </td><td align="center"><%=request.getParameter("vname")%></td></tr>
                    
                          <tr><td>Vendor MobNo : </td><td><%=m.get(3) %></td></tr>
                           <tr><td>Vendor Email : </td><td><%=m.get(2) %></td></tr>
                           
                        </table>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h1>Details</h1>
                </div>
                </span>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ItemName</th>
                            
                            <th class="text-center">Quantity Range</th>
                            <th class="text-center">Price / kg</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="col-md-1"><em><%=request.getParameter("iname") %></em></h4></td>
                            
                            <td class="col-md-1 text-center"><%=request.getParameter("qty") %></td>
                            <td class="col-md-1 text-center"><%=request.getParameter("price") %></td>
                        </tr>
                       
                       
                        <tr>
                            
                            <td class="text-left" colspan="3">
                               <strong>Area: <%=request.getParameter("area") %></strong><br>
                                <strong>Address:<%=request.getParameter("address") %> </strong>
                              
                            </td>
                            <p>
                               
                            </p></td>
                           
                        </tr>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                           
                        </tr>
                    </tbody>
                </table>
                <button type="button" class="btn btn-success btn-lg btn-block">
                    Appointment Booked Thank You..   <span class="glyphicon glyphicon-chevron-right"></span>
                </button></td>
            </div>
        </div>
    </div>
    
    
    </body>
</html>