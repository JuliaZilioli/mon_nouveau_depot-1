<?php
include 'header.php'
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Recherche</title>

        <style type="text/css"></style>
</head>
    <body class="body">
        <form class="formulaire" action="reponse_recherche.php" method="post">

        <div id="global">
        <h1>Recherche</h1>

            <div id="recherche">
                <label for="recherche"><img class="loupe" src="loupe.png" alt="loupe"></label>
                <input type="text" name="recherche" id="recherche" 
                placeholder="Rechercher ou saisir un texte"/>
            </div> 
                <?php
                    if (isset($_GET['erreurage'])) {
                        echo '<span>/!\ veuillez saisir un nombre</span>';
                    }
                ?>
          
          <div id="submit">
                <input id="rechercher" type="submit" value="Rechercher" />
          </div>      
    </div>
        </form>
    </body>
</html>

<?php
include 'footer.php'
?>
