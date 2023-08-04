<?php

$username = "root";
$password = "";
$server = 'localhost';
$db = 'package';

$con = mysqli_connect($server,$username,$password,$db);

if($con)
{
    // echo connection is successful


?>

<script>
    alert('connection is successful');
</script>

<?php
}

else
{
    // connection failed

    die("no connection" . mysqli_connect_error());
}



?>