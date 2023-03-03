<?php
    if ( (empty($_POST['recherche']))) {
        header('Location: form_recherche.php');
    }
    $recherche = $_POST['recherche'];

     $recherche_nettoye =  filter_var( $recherche , FILTER_SANITIZE_STRING,  FILTER_FLAG_STRIP_LOW | FILTER_FLAG_STRIP_HIGH)
?>
 <html>
  <body>
  <h1> Vérification de votre recherche </h1>
 <?php
    echo '<p>Votre recherche : '.$recherche_nettoye.'</p>'."\n";
?>
 </body>
 </html>