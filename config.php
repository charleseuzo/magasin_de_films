<?php
	switch ($_SERVER['SCRIPT_NAME']) {
		case "/index.php":
			$CURRENT_PAGE = "Accueil";
			$PAGE_TITLE = "Le Magasin de Films";
			break;
        case "/films.php":
          $CURRENT_PAGE = "Films";
          $PAGE_TITLE = "Films";
          break;
        case "/series.php":
          $CURRENT_PAGE = "Series";
          $PAGE_TITLE = "Séries";
          break;
	}
?>
