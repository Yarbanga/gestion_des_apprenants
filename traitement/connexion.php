<?php 
$bdd;
try 
{
     $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION; 
      $bdd= new PDO('mysql:host=localhost;dbname=gest_apprenants', 'root', '',
      $pdo_options); } 
      catch (PDOException $e)
       {
     echo 'Erreur : ' . $e->getMessage(); 
      }
?>