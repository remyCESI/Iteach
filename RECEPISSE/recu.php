<?php

try{
	
		$dbh = new PDO('mysql:host=localhost;dbname=dev_Iteach;charset=utf8', "root", "");
		
 }
 catch(PDOException $e){
 	print "Erreur ! : ".$e -> getMessage(). "<br/>";
	die();
}


$stmt=$dbh -> prepare("Call Insert_Cotisation(?,?,?,?,?,?,?,?,?,?)");

$stmt-> bindParam(1,$Nom);
$stmt-> bindParam(2,$Prenom);
$stmt-> bindParam(3,$CodeInfo);
$stmt-> bindParam(4,$Objet);
$stmt-> bindParam(5,$Ecole);
$stmt-> bindParam(6,$Paiement);
$stmt-> bindParam(7,$Adresse);
$stmt-> bindParam(8,$Date);
$stmt-> bindParam(9, $xCanvas);
$stmt-> bindParam(10,$Montant);

$Nom= $_POST['valeurNom'];
$Prenom=$_POST['valeurPrenom'];
$Objet=$_POST['valeurObjet'];
$Ecole=$_POST['valeurEcole'] ;
$Paiement=$_POST['valeurPaiement'];
$Adresse=$_POST['valeurAdresse'] ;
$Canvas=$_POST['Canvas'];
$xCanvas ="$Canvas";
$Montant= $_POST['valeurMontant'];
$Date = $_POST['valeurDate'];
$xDate = str_replace("-","",$Date);
$CodeInfo= $Nom.$Prenom.$xDate;
$stmt ->execute();



?>