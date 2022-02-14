<?php
$con=mysqli_connect("localhost","root","");
mysqli_select_db($con,"coffeecafe");

$a=$_POST['a'];
$c=$_POST['c'];
$d=$_POST['d'];
mysqli_query($con,"UPDATE `food` SET  `product` = '$c',`price` = '$d' where `f_id`='$a' ");

header('location:fetchfood.php');
?>

