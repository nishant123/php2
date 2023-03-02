<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
$sdata=$_GET['code'];
$disableswipeout = true;
echo "1=>";
if(isset($_POST['savestudent']))
{
echo "2=>";
//$trmsaid=$_SESSION['trmsaid'];

$subjects=date("Y-m-d h:i:s");
$new_time = date("Y-m-d H:i:s", strtotime('+9 hours +30 minutes'));
$fullname = $_POST['fullname'];
$email = $_POST['email'];
$phno = $_POST['phno'];
echo $sql="insert into gen_studentinfo(fullname,email,phno,register_date)values('$fullname','$email','$phno','$new_time')";



$query=$dbh->prepare($sql);
echo "3=>";
//$query->bindParam(':swipein',$subjects,PDO::PARAM_STR);
$query->execute();

 $LastInsertId=$dbh->lastInsertId();
 if ($LastInsertId>0) {
  echo "4=>";
echo '<script>alert("student has been added.")</script>';
echo "<script>window.location.href ='register.php'</script>";
}
else
  {
       echo '<script>alert("Something Went Wrong. Please try again")</script>';
  }


}


?>