<!DOCTYPE html>
<html>
<head>

<style>
body {
  background-image: url('bg11.jpg');
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}

input[type=text], select {
  width: 50%;
  height: 3%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=password], select {
  width: 50%;
  height: 3%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid #ccc;
  border-radius: 4px;
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
</style>
</head>
<body>
<form action="" method="post">
  <div>
  <label>Username:</label>
  <input type="text" name="username" value="">
  </div><br>
  <div>
    <label>Password:</label>
  <input type="password" name="psw" value=""></div> 
  <br>
  <div>
  <input type="submit" name="Login" value="Login"style="border-radius: 12px; padding: 10px 16px; "></div>
 </form>
</body>

<?php
error_reporting(0);

if(isset($_POST['Login']))
{
$name=$_POST["username"];
$id=$_POST["psw"];
if ($name=="nishant" && $id="123") {
     
include_once('../includes/config.php');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM ".PREFIX."feedback";
$result = $con->query($sql);


if ($result->num_rows > 0) {
    // output data of each row
    
    while($row = $result->fetch_assoc()) {
      $n=$row["Username"];
        $i=$row["Email"];
        $p=$row["Address"];
        $s=$row["Branch"];
        $t=$row["suggestions"];
        $a=$row["improvement"];
         echo "<table>";
          echo "<tr>";
            echo "<th>Name</th>";
      echo "<th>Emai</th>";
      echo "<th>Address</th>";
      echo "<th>Branch</th>";
      echo "<th>Suggestions</th>";
      echo "<th>Improvement</th>";
            echo "</tr>";
            echo "<br>";
        echo "<tr>";
        echo "<td>",$n,"</td>";
        echo "<td>",$i,"</td>";
        echo "<td>",$p,"</td>";
        echo "<td>",$s,"</td>";
        echo "<td>",$t,"</td>";
        echo "<td>",$a,"</td>";
        echo "<td>",$tt,"</td>";
        echo "<td>",$g,"</td>";
        echo "</tr>";
echo "</table>";

    }
} else {
    echo "0 results";
}


}
}
else if(isset($_POST['Login']))
{
header('Location: Admin1.php');

}
?>
</html>