<?php
// database connection code
if(isset($_POST['txtName']))
{
// $con = mysqli_connect('localhost', 'database_user', 'database_password','database');
$con = mysqli_connect('localhost', 'root', '','icloud');

// get the post records

$txtName = $_POST['txtName'];
$txtSubject = $_POST['txtSubject'];
$txtEmail = $_POST['txtEmail'];
$txtMessage = $_POST['txtMessage'];

// database insert SQL code
$sql = "INSERT INTO `icloudcontacts` (`name`, `subject`, `email`, `message`) VALUES ('$txtName', '$txtSubject', '$txtEmail', '$txtMessage')";

// insert in database 
$rs = mysqli_query($con, $sql);
if($rs)
{
	echo "Contact Records Inserted";
	'<div class="alert alert-success alert-dismissible fade show" role="alert">
	<strong>success!</strong> Your entry has been submitted successfully!
	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
	  <span aria-hidden="true">&times;</span>
	</button>
	</div>';  
}
}
else
{
	echo "Are you a genuine visitor?";
	
}
?>
