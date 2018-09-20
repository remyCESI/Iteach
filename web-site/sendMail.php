<?php

$mail = 'iteach@outlook.fr';

$exp_name = $_POST["nom"];
$exp_mail = $_POST["email"];
$subject = $_POST["sujet"];
$message_txt = $_POST["message"];

$boundary = "-----=".md5(rand());

//=====Mail header builder
$header = "From: \"".$exp_name."\".$exp_mail."."\n";
$header .= "Reply-to: \"".$exp_name."\" <".$exp_mail.">"."\n";
$header .= "MIME-Version: 1.0"."\n";
$header .= "Content-Type: multipart/alternative;"."\n";
//==========

//=====Ajout du message au format texte.

$message= "\n".$message_txt."\n";
//==========

//==========

mail($mail,$subject,$message,$header);

echo "<head><link rel=\"stylesheet\" href=\"index.css\"></head><body><p>Message envoyé ! Merci ! Vous allez être automatiquement redirigé</p></body>";

function redir($url){
 	echo '<script language="javascript">';
 	echo 'setTimeout("",1000)';
 	echo 'window.location="',$url,'";';
 	echo '</script>';
 }

redir("https://www.iteach.cf");