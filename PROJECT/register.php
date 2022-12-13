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
$program = $_POST['program'];
$yearlevel = $_POST['yearlevel'];
$username = $_POST['username'];
$password = generate_pw();
$role = 'student';
$department = 'Not Applicable';
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
		department,
		user_role,
		password;kk
	
		) VALUES (

		'".$username."',
		'".$firstname."',
		'".$middlename."',
		'".$lastname."',
		'".$program."',
		'".$yearlevel."',
		'".$status."',
		'".$department."',
		'".$role."',
		'".$password."'

			)";
			echo json_encode("Success");
		}
?>