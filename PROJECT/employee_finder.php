<?php


$sql = "SELECT * FROM transactions_users WHERE user_role = 'employee' 
AND status = 'true' 
AND  department = '".$department."' ";
$result = mysqli_query($db,$sql);
$count = mysqli_num_rows($result);

if($count == 1){
    echo json_encode("Success");
}else{
   echo json_encode("Error");
}

?>