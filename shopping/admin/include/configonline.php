<?php
define('DB_SERVER','localhost');
define('DB_USER','perfectr_perfectrgs');
define('PREFIX','shop_');
define('DB_PASS','3gZfRyTqFj');
define('DB_NAME','perfectr_perfectrgs');

$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>