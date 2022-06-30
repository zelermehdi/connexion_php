<?php
try
{
    $bdd = new PDO('mysql:host=localhost;dbname=connexion;charset=utf8', 'root', ''); // attention un mot de passe a été défini pour l'accès à la base de données
}

// Gestion des erreurs
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}
?>