<?php

$db = mysqli_connect('localhost','root','','userdata');
if(!$db)
{
	echo "Database connection failed";
}



$user_id = $_POST['id'];
$transaction_id = '5';
$status = 'ongoing';
$created_at = getdate();
$department = 'accounting';

$sql = "SELECT * FROM transactions_users WHERE user_id = '".$user_id."' AND status = 'ongoing' ";
$result = mysqli_query($db,$sql);
$count = mysqli_num_rows($result);

$ongoing = "false";


if($count == 1){
  

    echo json_encode("Error"); 


}
else{
    
    $sql = "SELECT * FROM users WHERE user_role = 'employee' AND status = 'true'   ";
    $result = mysqli_query($db,$sql);
    $count1 = mysqli_num_rows($result);
    $row = $result->fetch_assoc();
    $employee_id = $row['user_id'];

    if($count1 == 1){
        echo json_encode("Success");
    }else{
    echo json_encode("Error");
    
    }

    $sql = "SELECT * FROM count WHERE transaction_id = '".$transaction_id."' ";
    $result = mysqli_query($db,$sql);
    $count = mysqli_num_rows($result);
    $row = $result->fetch_assoc();

    $number = $row['count'] + 1;

    
    $insert = "INSERT INTO transactions_users(
		
    user_id,
    transaction_id,
    status,
    number,
    employee_id,
    created_at

    ) VALUES (

    '".$user_id."',
    '".$transaction_id."',
    '".$status."',
    '".$number."',
    '".$employee_id."',
    '".$created_at."'
    
        )";
    $query = mysqli_query($db,$insert);

    
    $sql = "UPDATE count
    SET count = '".$number."'
    WHERE transaction_id = '".$transaction_id."'";
    
    $result = mysqli_query($db,$sql);

    if($query){

        echo json_encode("Success");

    }

}

?>