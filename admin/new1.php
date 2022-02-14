<?php

$a=$_POST['a'];
$b=$_POST['b'];

$c=$_POST['c'];

$con=mysqli_connect("localhost","root","");
mysqli_select_db($con,"coffeecafe");
mysqli_query($con,"INSERT INTO  `coffeecafe`.`user` (`id` ,`name` ,`user` ,`pwd`)VALUES (NULL ,  '$a',  '$b',  '$c');");
header("location:index.php");





?>