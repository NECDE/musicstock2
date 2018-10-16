<?php

include("../../config.php");
// if(!isset($_POST['username'])) {
// 	echo "ERROR: Could not set avatar";
// 	exit();
// }


// $username = $_POST['username'];
$username = "admin";


	if(!empty($_FILES["foto"]["type"])){
		$fileName = $_FILES['foto']['name'];
		$valid_extensions = array("jpeg", "jpg", "png", "gif");
		$temporary = explode(".", $_FILES["foto"]["name"]);
		$file_extension = end($temporary);
		if((($_FILES["foto"]["type"] == "image/png") || ($_FILES["foto"]["type"] == "image/jpg") || ($_FILES["foto"]["type"] == "image/jpeg") || ($_FILES["foto"]["type"] == "image/gif")) && in_array($file_extension, $valid_extensions)){
			$sourcePath = $_FILES['foto']['tmp_name'];
			$targetPath = "../../../assets/imagenes/".$fileName;
			if(move_uploaded_file($sourcePath,$targetPath)){
				$uploadedFile = $fileName;

				$sql = "UPDATE users SET profilePic='".$uploadedFile."' WHERE username='".$username."';";
				$query_update = mysqli_query($con,$sql);

				if($query_update) 
				{
					echo "ok";
				}

			}
			else "Algo salió mal. Por favor verifica que la tabla exista";
		}
	}
	else echo "string";

?>