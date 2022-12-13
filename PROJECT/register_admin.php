<?php
$db = mysqli_connect('localhost','root','','userdata');
if(!$db)
{
	echo "Database connection failed";
}

function generate_pw() {
  
	// Set random length for password
	$password_length = rand(8, 16);
	$pw = '';
	for($i = 0; $i < $password_length; $i++) {
	  $pw .= chr(rand(32, 126));
	}
	return $pw;
  }

$firstname = $_POST['firstname'];
$middlename = $_POST['middlename'];
$lastname = $_POST['lastname'];
$department = $_POST['department'];
$username = $_POST['username'];
$window = $_POST['window'];
$password = generate_pw();
$yearlevel = 'Not Applicable';
$program = 'Not Applicable';
$role = 'employee';
$status = 'unactivated';

$sql = "SELECT user_id FROM users WHERE user_id = '".$username."'";

$result = mysqli_query($db,$sql);
$count = mysqli_num_rows($result);
if($count == 1){
	echo json_encode("Error");
}else{
	$insert = "INSERT INTO users(
		
		user_id,
		firstname,
		middlename,
		lastname,
		program,
		yearlevel,
		status,
		window_no,
		department,
		user_role,
		password
	
		) VALUES (

		'".$username."',
		'".$firstname."',
		'".$middlename."',
		'".$lastname."',
		'".$program."',
		'".$yearlevel."',
		'".$status."',
		'".$window."',
		'".$department."',
		'".$role."',
		'".$password."'

			)";
		$query = mysqli_query($db,$insert);
		if($query){
			echo json_encode("Success");
		}
}
?>