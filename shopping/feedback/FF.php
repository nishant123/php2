<html>
<head>
<title></title>
</head>
<body>
<style>

input[type=text], select {
  width: 70%;
  height: 3%;
  padding: 12px 20px;
  margin: 8px 0;
    border: 2px solid #ccc;
  border-radius: 1px;
  box-sizing: border-box;
}
input[type=submit]:hover {
  background-color: cornflowerblue;
}
div{
padding-: 10px;
width : 350px;
text-align: right;
color: white;
font-size: 20px;
}
.label{
  padding: 8px;
  font-family: Arial;
}
body {
  background-image: url('feed.png');
}
</style>

<?php

error_reporting(0);

$name=$_POST["sname"];
$id=$_POST["eid"];
$Add=$_POST["Add"];
$b=$_POST["branch"];
$s=$_POST["sss"];
$im=$_POST["im"];


if (isset($_POST["Clear"]))
{

$name="";
$id="";
$Add=
$b="";
$s="";
$im="";
}


if(isset($_REQUEST['Submit']))
{


include_once('../includes/config.php');

$sql = "INSERT INTO ".PREFIX."feedback (Username,Email,Address,Branch,suggestions,improvement)
VALUES ('$name','$id','$Add','$b','$s','$im')";

if ($con->query($sql) === TRUE) {
    
    $s1="Data Saved successfully";
} else {
    $ss1="not saved";
}

$conn->close();
}

?>

<form method="Post" action="">


<br>
<h1 style="color:white";>Feedback System</h1>
<br>
<div>
<label> Name:</label>
<input type="text" name="sname" required="" class="txtbox" value="<?php echo $name; ?>"></div>
<br>
<div>
Email:<input type="text" name="eid" required="" value="<?php echo $id; ?>"> </div>
<br>
<div>
Address:<input type="text" name="Add" required="" value="<?php echo $Add; ?>"></div>
<br>
<div>
<input type="hidden" name="branch" required="" value="<?php echo $b; ?>"></div>
<br>
<div>
Suggestion<input type="text" name="sss" required="" value="<?php echo $s; ?>"></div>
<br>
<div>
Improvement:<input type="text" name="im" required="" value="<?php echo $im; ?>"></div>
<br>
<div>
<input type="submit" name="Submit" value="Submit" style="border-radius: 12px; padding: 10px 16px;">
<input type="submit" name="Clear" value="Clear" style="border-radius: 12px; padding: 10px 16px; "> </div>
<div>
<label><?php echo $s1 ?></label>
<label><?php echo $ss1 ?></label>
</div>
</form>
</form>
<form method="Post" action="Admin.php">
<div>
<input type="submit" name="Admin"  value="Admin" style="border-radius: 12px; padding: 10px 16px; "></div>
</form>
</body>
</html>