<?php
$con=mysqli_connect("localhost","root","");
mysqli_select_db($con,"coffeecafe");
$a=$_POST['menutype'];
$b=$_POST['product'];
$d=$_FILES['image']['tmp_name'];
$e='../img/'.$_FILES['image']['name'];
$g=$_FILES['image']['name'];
$f=$_POST['price'];

move_uploaded_file($d,$e);

mysqli_query($con,"INSERT INTO `food` (`f_id` ,`menu_type` ,`product` ,`image`,`price`)VALUES ('',  '$a',  '$b',  '$g','$f')");

?>

<img src="<?php echo  $e;?>" />
