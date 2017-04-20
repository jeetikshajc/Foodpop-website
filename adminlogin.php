<!DOCTYPE html>
<html lang="en">
<head>
  <title>FOODPOP- Taste Something New</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 400 15px Lato, sans-serif;
      line-height: 1.8;
      color: #818181;
  }
  .container-fluid {
      padding: 60px 50px;
  }
  .bg-grey {
      background-color: #f6f6f6;
  }
  .logo-small {
      color: #f4511e;
      font-size: 50px;
  }
  .logo {
      color: #f4511e;
      font-size: 200px;
  }
  .navbar {
      margin-bottom: 0;
      background-color: #555;
      z-index: 9999;
      border: 0;
      font-size: 14px !important;
      line-height: 1.42857143 !important;
      letter-spacing: 4px;
      border-radius: 0;
      font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
      color: #fff !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
      color: #fff !important;
  }
  
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
        width: 100%;
        margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
        font-size: 150px;
    }
  }
  </style>
  
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="foodpop.php">FOODPOP</a>
    </div>
  </div>
</nav>

<div class="text-center">
  <form class="form-horizontal" id="formlogin" method="POST" >
<fieldset>

<br><br>
<div>
<h1>Admin Login</h1>
</div>
<div class="control-group">

<label class="control-label" for="email">E-mail</label>

<div class="controls">

<input type="email" id="email" name="email" placeholder="Enter your Email address" autocomplete="on" class="input-xlarge" required>

</div>

</div>

<div class="control-group">

<label class="control-label" for="password">Password</label>

<div class="controls">

<input type="password" id="password" name="password" maxlength="10" placeholder="Enter Password" class="input-xlarge" required >

</div>

</div>

<br>
<div class="form-group" >
<div style="margin-right='60%';" >
 <button type="submit" name="login" form="formlogin"  class="btn btn-primary">Login</button>
</div>
</div>
</fieldset>

<?php
	session_start();
	if(isset($_POST['login']))
	{
	$a=$_POST["email"];
	$b=$_POST["password"];
	/*$b=md5($b);*/
	$conn = mysqli_connect("localhost","root","root","foodpop");
	// Check connection
		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		} 


	$sql = "SELECT name,email,password FROM admin where email='$a' AND password='$b'";
	$result = $conn->query($sql);
	$row = mysql_fetch_assoc($result);
	if ($result->num_rows == 1)  {
	// Set session variables
	$_SESSION['email'] = $a;
	$_SESSION['login']="TRUE";
	 header("location:admin.php"); // Redirecting To Other Page
	}
	 else
	{		
		echo 
					
			'<script type="text/javascript">'
			,' if (confirm("Invalid Email or Password ...... try again later ") == true) {
				 window.open("adminlogin.php","_self");
			} else {
			   window.open("adminlogin.php","_self");
			}',
		   '</script>';
	  
	}
}	
?>
</form>
</div>
<!--footer -->
<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
   
  </a>
  <p>
<h4 style="text-align:center">
<b>Contact Us: </b></h4>
email:foodpop@gmail.com <br>
Phone number: 1234567890 <br>

</p>
</footer>



</body>
</html>
