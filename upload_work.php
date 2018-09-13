<?php

	if(isset($_POST['name']) && isset($_POST['first_name']) && isset($_POST['subject']))
	{
		$error="";
		if ($_FILES['work']['error'] > 0) $error = "Erreur lors du transfert";

		$extensions_valides = array( 'doc' , 'docx' , 'pdf' , 'odt' );
		$extension_upload = strtolower( substr( strrchr($_FILES['work']['name'], '.'),1));
		if (!in_array($extension_upload,$extensions_valides)) $error = "Mauvaise extension";

		if($error===""){
			$file_name=$_POST['class']."_".$_POST['name']."_".$_POST['first_name']."_".$_POST['subject']."_".date("j-m-y-s").".".$extension_upload;

			$file_name = "works/{$file_name}";

			$resultat = move_uploaded_file($_FILES['work']['tmp_name'],$file_name);
		}
		else {
			print($error);
		}

		
	}