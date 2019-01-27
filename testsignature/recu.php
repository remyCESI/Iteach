<?php

try{
	
		$dbh = new PDO('mysql:host=localhost;dbname=dev_Iteach', "root", "");
		
 }
 catch(PDOException $e){
 	print "Erreur ! : ".$e -> getMessage(). "<br/>";
	die();
}

echo "coucou";
echo $_POST['valeurNom'];
$stmt=$dbh -> prepare("Call Insert_Cotisation(?,?,?,?,?,?,?,?,?,?) ");




$stmt-> bindParam(1,$Nom);
$stmt-> bindParam(2,$Prenom);
$stmt-> bindParam(3,$CodeInfo);
$stmt-> bindParam(4,$Objet);
$stmt-> bindParam(5,$Ecole);
$stmt-> bindParam(6,$Paiement);
$stmt-> bindParam(7,$Adresse);
$stmt-> bindParam(8,$Date);
$stmt-> bindParam(9,$Canvas);
$stmt-> bindParam(10,$Montant);

$Nom= $_POST['valeurNom'];
$Prenom=$_POST['valeurPrenom'];
$Objet=$_POST['valeurObject'];
$Ecole=$_POST['valeurEcole'] ;
$Paiement=$_POST['valeurPaiement'];
$Adresse=$_POST['valeurAdresse'] ;
$Date=$_POST['valeurDate'] ;
$Canvas=$_POST['valeurCanvas'];
$Montant= $_POST['valeurMontant'];
$CodeInfo= $Nom.$Prenom.$TransfDate;
$TransfDate = $Date->format('Y-m-d');

$stmt ->execute();


?>