<!-- Main -->
<div id="content">
  <!-- Connexion, Inscription   -->
  <div id="connexionDiv" class="contact-form">
    <img src="assets/images/films/avatar.jpg" alt="avatar" class="avatar">
    <h2>Connexion membre</h2>
    <form method="POST" action="serveur/seConnecter.php">
      <p>Code d'accès</p>
      <input type="text" name="codeDacces" placeholder="Entrez votre code d'accès"/>
      <p>Mot de passe</p>
      <input type="password" name="mdp" placeholder="Entrez votre mot de passe"/>
      <input type="submit" value="Valider" />
      <input type="button" value="Quitter" onclick="rendreInvisible('connexionDiv')"/>
    </form>
  </div>
  <div id="devenirMembreDiv" class="contact-form">
    <img src="assets/images/films/avatar.jpg" alt="avatar" class="avatar">
    <h2>Inscription</h2>
    <form method="POST" action="serveur/devenirMembre.php">
      <p>Nom</p>
      <input type="text" name="nom" placeholder="Entrez votre nom"/>
      <p>Prénom</p>
      <input type="text" name="prenom" placeholder="Entrez votre prénom"/>
      <p>Code d'accès</p>
      <input type="text" name="codeDacces" placeholder="Entrez votre code d'accès"/>
      <p>Mot de passe</p>
      <input type="password" name="mdp" placeholder="Entrez votre mot de passe"/>
      <input type="submit" value="Valider" />
      <input type="button" value="Quitter" onclick="rendreInvisible('devenirMembreDiv')"/>
    </form>
  </div>
<!-- Fin Connexion, Inscription   -->
