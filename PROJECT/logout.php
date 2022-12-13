<?php
 $db = mysqli_connect('localhost','root','','userdata');

 $user_id = $_POST['id'];


 $sql = "UPDATE users
 SET status = 'false'
 WHERE user_id = '".$user_id."'";
 
 $result = mysqli_query($db,$sql);
 $count = mysqli_num_rows($result);


 if($count == 1){
     echo json_encode("Success");
 }else{
    echo json_encode("Error");
 }
 ?>