<!DOCTYPE html>
<html lang="fr">
    <head>
      <title><?php print $PAGE_TITLE; ?></title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <!-- CSS -->
      <link href="assets/css/bootstrap.min.css" rel="stylesheet">
      <link href="assets/css/style.css" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Fjalla+One&display=swap" rel="stylesheet">
    </head>
    <body class="clearfix">
        <div id="overlay" onclick="toggleDisplay()">
        </div>
        <!-- Header -->
        <div id="Header_wrapper" class="bg-parallax" data-enllax-ratio="0.3">
          <header class="container-fluid header" id="entete">
            <div id="container_header">
              <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                <a class="navbar-brand" href="https://www.magasindefilms.com/" id="Titre">Le Magasin de Films</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <ul id="primary" class="navbar-nav">
                  <li id="menu-item-13" class="nav-item menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-9 current_page_item menu-item-13"><a href="https://www.magasindefilms.com/" aria-current="page">Accueil</a></li>
                  <li id="menu-item-20" class="nav-item menu-item menu-item-type-post_type menu-item-object-page menu-item-20"><a href="/films.php">Films</a></li>
                  <li id="menu-item-21" class="nav-item menu-item menu-item-type-post_type menu-item-object-page menu-item-21"><a href="/series.php">Séries</a></li>
                </ul>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                  <ul class="navbar-nav">
                    <li class="nav-item">
                      <button id="devenirMembre" onclick="rendreVisible('devenirMembreDiv','connexionDiv')">
                        Devenir membre
                      </button>
                    </li>
                    <li class="nav-item">
                      <button id="connexion" onclick="rendreVisible('connexionDiv','devenirMembreDiv')">
                        Connexion
                      </button>
                    </li>
                  </ul>
                </div>
              </nav>
            </div>
          </header>
        </div>

        <!-- Fin Header -->
