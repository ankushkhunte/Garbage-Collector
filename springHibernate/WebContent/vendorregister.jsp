<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
   <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="a/css/style.css">
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
<body style="color: white">
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
  <div class="form">
       <h2 align="center" style="color: white">${msg}</h2>
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="vlogin.jsp">Log In</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="signup">   
          <h2 align="center"><span style="color: white;">Vendor Register here</span></h2>
          
          <form action="vregister.html" method="get">
          
<!--           <div class="top-row"> -->
<!--             <div class="field-wrap"> -->
<!--               <label> -->
<!--                 User Id<span class="req">*</span> -->
<!--               </label> -->
<!--               <input type="text" name="uid"required autocomplete="off" /> -->
<!--             </div> -->
        
            <div class="field-wrap">
              <label>
               <span class="req"></span>
              </label>
               <h3 style="color: white">Vendor Name</h3>
              <input type="text" name="vname" required autocomplete="off" style="color: white;"/>
            </div>
<!--           </div> -->
               <div class="field-wrap">
              <label>
                <span class="req"></span>
              </label>
              <h3 style="color: white">Password</h3>
              <input type="password" name="pass" required autocomplete="off" style="color: white;"/>
            </div>

          <div class="field-wrap">
            <label>
              <span class="req"></span>
            </label>
            <h3 style="color: white">Email Address</h3>
            <input type="email" name="email" required autocomplete="off" style="color: white;"/>
          </div>
          
          <div class="field-wrap">
            <label>
             <span class="req"></span>
            </label>
             <h3 style="color: white">Mobile No</h3>
            <input type="number" name="mobno" required autocomplete="off" style="color: white;" min="0"/>
          </div>
          <div class="field-wrap">
            <label>
             <span class="req"></span>
            </label>
             <h3 style="color: white">City</h3>
            <input type="text" name="city" required autocomplete="off" style="color: white;"/>
          </div>
          <div class="field-wrap">
            <label>
              <span class="req"></span>
            </label>
            <h3 style="color: white">Zip Code</h3>
            <input type="number" name="pincode" required autocomplete="off" style="color: white;" min="0"/>
          </div>
          <button type="submit" class="button button-block"/>Register</button>
          
          </form>


        </div>
        
      <div id="login">   
          <h1>Welcome Back!</h1>
          
          <form action="login" method="post">
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" required autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button class="button button-block"/>Log In</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="index.js"></script>

</body>
</html>
