<?php

try{
	
		$dbh = new PDO('mysql:host=localhost;dbname=dev_Iteach; charset=utf8', "root", "");
		
 }
 catch(PDOException $e){
 	print "Erreur ! : ".$e -> getMessage(). "<br/>";
	die();
}


$stmt=$dbh -> prepare("call SelectAll");
$stmt->execute();
$result =$stmt->fetchAll();
echo json_encode( $result);




?>