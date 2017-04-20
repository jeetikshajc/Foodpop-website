<?php 
session_start();

$conn = new mysqli("localhost", "root", "root","foodpop");
// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	} 

		$a=$_POST['recipename'];
		$b=$_POST['category'];
		$c=$_POST['ingredients'];
		$d=$_POST['recipe'];
		$e=$_SESSION['email'];
		$sql1 = "SELECT name FROM user where email='$e' ";
		$result = $conn->query($sql1);
		$row = $result->fetch_assoc();
		$f=$row['name'];
		
		$sql= "INSERT INTO recipes(email, name, recipename, category, ingredients, recipe) VALUES ( '$e', '$f', '$a', '$b', '$c', '$d')";
		if ($conn->query($sql) === TRUE) {
     $message = "Recipe uploaded successfully.";
echo "<script type='text/javascript'>alert('$message');</script>";
		header( "refresh:1; url=userhome.php" );
		
} else {
    echo  "Error".$conn->error; 
}
   
$conn->close();

?>