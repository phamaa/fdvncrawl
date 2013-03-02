<?php
$data = json_encode(stripcslashes($_POST["data"]));
$data = substr($data, 1, -1);
$fp = fopen($_POST["filename"], 'a+');
//fseek($fp, 0, SEEK_SET); //MOVES THE CURSOR 0 PLACES FROM START OF THE FILE
fwrite($fp, $data);
fclose($fp);
?>
