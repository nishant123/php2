<?php 
$file = 'manage_task.php';
file_put_contents($file,str_replace('form-control','nishant',file_get_contents($file)));
?>