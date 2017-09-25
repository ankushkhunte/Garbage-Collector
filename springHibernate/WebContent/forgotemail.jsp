<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
       <li class="tab "><a href="forgotpassword.jsp">Forgot Password</a></li>
       <li class="tab active"><a href="forgotemail.jsp">Forgot Email</a></li>
       
      </ul>
      
      
        
      <div id="#login">   
          <h1>Provide Mobile Number and UserName</h1>
          
          <form action="forgotemail.html" method="post">
          
          <div class="field-wrap">
            <label>
           <span class="req">*</span>
            </label>
            <h3 style="color: white"> UserName</h3>
            <input type="text" name="uname" required autocomplete="off"/>
          </div>
          
          
            <div class="field-wrap">
            <label>
           <span class="req">*</span>
            </label>
            <h3 style="color: white"> Mobile Number</h3>
            <input type="number" name="mobno" required autocomplete="off"/>
          </div>
          
          <button type="submit" class="button button-block"/>Submit</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>
</body>