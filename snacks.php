<?php session_start(); ?>
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
  h1{
		border-color: #555;
  }
  h2 {
      font-size: 24px;
      text-transform: uppercase;
      color: #303030;
      font-weight: 600;
      margin-bottom: 30px;
  }
  h4 {
      font-size: 19px;
      line-height: 1.375em;
      color: #303030;
      font-weight: 400;
      margin-bottom: 30px;
  }  
  .jumbotron {
      background-image:url("h.jpg");
      color: #fff;
	  border-color: #555;
      padding: 100px 25px;
      font-family: Montserrat, sans-serif;
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
  .dropdown-menu li a{
	color: #fff !important;
      background-color: #555 !important;
  }
  .dropdown-menu li a:hover{
	color: #f4511e !important;
      background-color: #555 !important;
  }
 
  
  .navbar-nav li a:hover, .navbar-nav li.active a {
      color: #f4511e !important;
      background-color: #555 !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
      color: #fff !important;
  }
  footer .glyphicon {
      font-size: 20px;
      margin-bottom: 20px;
      color: #f4511e;
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
  hr { 
    display: block;
    margin-top: 0.5em;
    margin-bottom: 0.5em;
    margin-left: auto;
    margin-right: auto;
    border-style: inset;
    border-width: 2px;
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
      <a class="navbar-brand" href="userhome.php">FOODPOP</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="userhome.php">Home</a></li>
		<li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Recipe
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="snacks.php">Snacks</a></li>
			<li><a href="starters.php">Starters</a></li>
			<li><a href="maincourse.php">Main Course</a></li>
			<li><a href="desserts.php">Desserts</a></li>
          </ul>
        </li>
		<li><a href="profile.php">Profile</a></li>
       <li><a href="logout.php">Log Out</a></li>
        </ul>
    </div>
  </div>
</nav>

<div class="jumbotron text-center">
  <h1>Welcome to FOODPOP</h1> 
  <p> Taste something new</p>
  </div>
 <h3 style='margin-left:40%'>Category : Snacks</h3>
<?php
 
$conn = new mysqli("localhost", "root", "root","foodpop");
// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	} 
$sql = "SELECT * FROM recipes where category ='Snacks' AND status='approved'";

$result = $conn->query($sql);

 if ($result->num_rows > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
        echo "<div  class='form-group'>";
		echo "<h3 style='margin-left:10%; margin-right:10%;' >Name of Recipe :  ";
		echo $row['recipename'];
		echo "</h3>";
		echo "<h3 style='margin-left:10%; margin-right:10%;'>Uploader :  ";
		echo $row['name'];
		echo "</h3>";
		echo "<h3 style='margin-left:10%; margin-right:10%;'>Email :  ";
		echo $row['email'];
		echo "</h3>";
		echo "</div>";
		//echo "<br>";
		echo "<div style='margin-left:10%; margin-right:10%'>";
		echo "<div align='left' padding = 10px;>";
		echo "<h3>Ingredients :</h3>";
		echo "<p>";
		echo $row['ingredients'];
		echo "</p>";
		echo "<h3>Steps :</h3>";
		echo "<p>";
		echo $row['recipe'];
		echo "</p>";
		echo "<hr>";
		echo "</div>";
		echo "</div>";
		
    }
}

$conn->close();
?>

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
