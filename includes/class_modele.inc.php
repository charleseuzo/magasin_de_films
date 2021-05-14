<?php
  require_once("class_connection.inc.php");
  class filmsModele{
	  private $query;
	  private $params;
	  private $connection;

    function __construct($query=null,$params=null) {
		  $this->query=$query;
		  $this->params=$params;
    }

    function connecting() {
	    $myConnection = new Connection("localhost", "magayaud", "3WgyFMN1dZsTmw", "magayaud_magasindefilm");
	    $myConnection->connect();
	    return $myConnection->getConn();
    }

    function executing() {
		  $this->connection = $this->connecting();
		  $stmt = $this->connection->prepare($this->query);
		  $stmt->execute($this->params);
		  $this->disconnect();
		  return $stmt;
	  }

    function disconnect() {
		  unset($this->connection);
    }

  function enleverFichier($dossier,$pochette){
  	if($pochette!=="avatar.jpg"){
  		$rmPoc="../$dossier/".$pochette;
  		$tabFichiers = glob("../$dossier/*");
  		foreach($tabFichiers as $fichier){
  		  if(is_file($fichier) && $fichier==trim($rmPoc)) {
  			unlink($fichier);
  			break;
  		  }
  		}
  	}
  }

  function verserFichier($dossier, $inputNom, $fichierDefaut, $chaine){
	  $cheminDossier="../$dossier/";
	  $nomPochette=sha1($chaine.time());
	  $pochette=$fichierDefaut;
	  if($_FILES[$inputNom]['tmp_name']!==""){
		  $tmp = $_FILES[$inputNom]['tmp_name'];
		  $fichier= $_FILES[$inputNom]['name'];
		  $extension=strrchr($fichier,'.');
		  @move_uploaded_file($tmp,$cheminDossier.$nomPochette.$extension);
		  @unlink($tmp);
		  $this->enleverFichier($dossier,$pochette);
		  $pochette=$nomPochette.$extension;
	  }
	  return $pochette;
  }
}
