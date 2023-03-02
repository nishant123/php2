<?php
define('DB_SERVER','localhost');
define('DB_USER','root');
define('DB_PASS' ,'');
define('PREFIX' ,'shop_');

$prjname = 'h';

if($prjname =='h') { //home things
    define('DB_NAME', 'homeshop');
    define('PRODUCTIMAGES', 'productimages_home');
}else if($prjname =='hd') {//document
    define('DB_NAME', 'homedocsshop');
    define('PRODUCTIMAGES', 'productimages_homedocs');;
}else if($prjname =='hs') {//main shopping
    define('DB_NAME', 'shopping');
    define('PRODUCTIMAGES', 'productimages_shop');
}else if($prjname =='hss') { //sector things
    define('DB_NAME', 'sectorshop');
    define('PRODUCTIMAGES', 'productimages_sector');
}else if($prjname =='sp') { //shopping pro
    define('DB_NAME', 'shoppingpro');
    define('PRODUCTIMAGES', 'productimages_shoppro');
}
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno())
{
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>