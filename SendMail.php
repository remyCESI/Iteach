<?php 

$telephone = $_POST['telephone'];
$sujet= $_POST['sujet'];
$email = $_POST['email'];
$message= $_POST['message'];
$to="remy.vancamp@viacesi.fr";

try{
echo $telephone;
mail($to,$sujet."de".$email,$message);
}
catch(Exception $e){

   echo 'fail';
}

     
?>
 
