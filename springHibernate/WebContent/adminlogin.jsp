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

  
</head>

<body>
  <div class="form">
       <h3 align="center" style="color: white">${msg}</h3>
      <ul class="tab-group">
<!--         <li class="tab "><a href="login_user.jsp">Sign Up</a></li> -->
        <li class="tab active"><a href="#login">Log In</a></li>
      </ul>
      
      
        
    <div id="login">   
        <h1>Admin Log In Here..!</h1>
        
        <form action="alogin.html" method="post">
        
          <div class="field-wrap">
          <label>
              <span class="req"></span>
          </label>
          <h3 style="color: white">User Name </h3>
          <input type="text" Name="aname" placeholder="UserName" required autocomplete="off"/>
        </div>
        
        <div class="field-wrap">
          <label>
            <span class="req"></span>
          </label>
          <h3 style="color: white">Password </h3>
          <input type="password" placeholder="Password" name="pass" required autocomplete="off"/>
        </div>
        
        <p class="forgot"><a href="aforgotpass.jsp">Forgot Password?</a></p>
        
        <button class="button button-block"/>Log In</button>
        
        </form>

      </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>
</body>
</html>