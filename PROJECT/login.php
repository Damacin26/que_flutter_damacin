<?php
 $db = mysqli_connect('localhost','root','','userdata');
 $user_id = $_POST['user_id'];
 $password = $_POST['password'];
 $sql = "SELECT * FROM users WHERE user_id = '".$user_id."' AND password = '".$password."'";
 $result = mysqli_query($db,$sql);
 $count = mysqli_num_rows($result);


 if($count == 1){
 	
	$row = $result->fetch_assoc();

	$sql = "UPDATE users
	SET status = 'true'
	WHERE user_id = '".$user_id."'";
	
	$result2 = mysqli_query($db,$sql);
	$count2 = mysqli_num_rows($result);

	if($row["user_role"] == 'employee'){

		if($row["status"] == 'unactivated'){

			
			echo json_encode("unactivated");
			
		}
		else{

			

			echo json_encode("employee");
		}
		
	}

	if($row["user_role"] == 'student'){
		if($row["status"] == 'unactivated'){

			echo json_encode("unactivated");
			
		}
		else{

			echo json_encode("student");
		}
	}

 } 
 
 else{
 	echo json_encode("Error");
 }
?>