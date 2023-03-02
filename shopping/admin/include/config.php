<?php
define('DB_SERVER','localhost');
define('DB_USER','root');
define('DB_PASS' ,'');
define('PREFIX' ,'shop_');
//define('DB_NAME', 'homeshop');
define('DB_NAME', 'homedocsshop');
//define('DB_NAME', 'shopping');
//define('DB_NAME', 'sectorshop');
//define('PRODUCTIMAGES', 'productimages_home');
define('PRODUCTIMAGES', 'productimages_homedocs');
//define('PRODUCTIMAGES', 'productimages_shop');
//define('PRODUCTIMAGES', 'productimages_sector');

$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>