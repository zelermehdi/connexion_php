<?php 
    session_start();
    require_once 'config.php'; // ajout connexion bdd 
    require_once('Employe.php');
   // si la session existe pas soit si l'on est pas connecté on redirige
    if(!isset($_SESSION['user'])){
        header('Location:index.php');
    }
?>
<!doctype html>
<html lang="en">
  <head>
    <title>Espace employés</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
    <h1>Bonjour  <?php echo $_SESSION['user']." !"; ?> </h1>
    <ul>

    </ul>
    <a href="deconnexion.php" class= "btn btn-danger btn-lg">Déconnexion </a>

  </body>
</html>
