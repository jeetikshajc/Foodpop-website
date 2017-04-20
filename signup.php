<!DOCTYPE html>
<html lang="en">
<head>

<script type="text/javascript">
function val(){
if(frm.password.value == "")
{
  alert("Enter the Password.");
  frm.password.focus(); 
  return false;
}
if((frm.password.value).length < 8)
{
  alert("Password should be minimum 8 characters.");
  frm.password.focus();
  return false;
}

if(frm.confirmpassword.value == "")
{
  alert("Enter the Confirmation Password.");
  return false;
}
if(frm.confirmpassword.value != frm.password.value)
{
  alert("Password confirmation does not match.");
  return false;
}

return true;
}

function mail(){
   var emailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
if(email.value.match(emailformat))  
{  
document.form.text1.focus();  
return true;  
}  
else  
{  
alert("You have entered an invalid email address!");  
document.form.text1.focus();  
return false;  
}  
}
</script>


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
<br><br>
<div>
<h1>Register</h1>
</div>



<div class="my">
    
<form  class="form-horizontal" name="frm" method="post" action="foodpop.php" >
<div class="control-group">
<label class="control-label"  for="name">Name</label>
<div class="controls">
<input type="text" name="name" placeholder="Enter Username" />
</div>
<div class="control-group">
<label class="control-label" for="email">E-mail</label>
<div class="controls">
<input type="email" name="email" placeholder="Enter Email" />
</div>
</div>
<div class="control-group">
<label class="control-label" for="password">Password</label>
<div class="controls">
<input type="password" name="password" placeholder="Enter Password" maxlength="10" />
</div>
</div>
<div class="control-group">
<label class="control-label"  for="confirmpassword">Confirm Password</label>
<div class="controls">
<input type="password" name="confirmpassword" placeholder="Re-enter Password" maxlength="10" />
</div>
</div>
<br>
<input type="submit" name="submit" value="Submit" onclick="return val(); return mail();" class="btn btn-primary"></input>
<input type="reset" value="Reset" class="btn btn-primary"></input>

<?php

$conn = new mysqli("localhost", "root", "root","foodpop");
if(isset($_POST['submit']))
{
    $a=$_POST['name'];
    $b=$_POST['email'];
    $c=$_POST['password'];
    
    $sql= "INSERT INTO user(email, name, password) VALUES ( '$b', '$a', '$c')";
    
    if ($conn->query($sql) === TRUE) {
   $message = "Signed up successfully.";
	echo "<script type='text/javascript'>alert('Signed up successfully.');</script>";
	header("Location: userhome.php");} else {
    echo  "Error".$conn->error; 
  }
}
  
$conn->close();
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
