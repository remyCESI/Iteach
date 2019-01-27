<?php 
session_start();
try{
	
    $dbh = new PDO('mysql:host=localhost;dbname=dev_Iteach;charset=utf8', "root", "");
    
}
catch(PDOException $e){
 print "Erreur ! : ".$e -> getMessage(). "<br/>";
die();
}

$stmt=$dbh -> prepare(" select * from information where CodeInformation = ?");

$stmt-> bindParam(1,$Code);

$_SESSION['Code']=$_POST['Code'];
$Code= $_SESSION['Code']; 
$stmt ->execute();
$result =$stmt->fetchAll();
echo json_encode( $result);


   
?>
