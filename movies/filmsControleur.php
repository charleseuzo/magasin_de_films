<?php
	require_once("../includes/class_modele.inc.php");
	$tabRes=array();

	// function enregistrer(){
	// 	global $tabRes;
	// 	$titre=$_POST['titre'];
	// 	$res=$_POST['res'];
	// 	$categ=$_POST['categ'];
	// 	$annee=$_POST['annee'];
	// 	$duree=$_POST['duree'];
	// 	$prix=$_POST['prix'];
	// 	try{
	// 		$unModele = new filmsModele();
	// 		$pochete=$unModele->verserFichier("images", "pochette", "avatar.jpg",$titre);
	// 		$requete="INSERT INTO films VALUES(0,?,?,?,?,?,?,?,'','','')";
	// 		$unModele=new filmsModele($requete,array($titre,$res,$categ,$annee,$duree,$pochete,$prix));
	// 		$stmt=$unModele->executing();
	// 		$tabRes['action']="enregistrer";
	// 		$tabRes['msg']="Film bien enregistré";
	// 	}catch(Exception $e){
	// 	}finally{
	// 		unset($unModele);
	// 	}
	// }

	function lister(){
		global $tabRes;
		$tabRes['action']="lister";
    $query="SELECT * FROM films";
		try{
			 $unModele=new filmsModele($query,array());
			 $stmt=$unModele->executing();
			 $tabRes['listeFilms']=array();
			 while($ligne=$stmt->fetch(PDO::FETCH_OBJ)){
			    $tabRes['listeFilms'][]=$ligne;
			 }
		}catch(Exception $e){
		}finally{
			unset($unModele);
		}
	}

	// function listerCateg(){
	// 	global $tabRes;
	// 	$tabRes['action']="listerCateg";
  //   $query="SELECT DISTINCT categorie FROM films";
	// 	try{
	// 		 $unModele=new filmsModele($query,array());
	// 		 $stmt=$unModele->executing();
	// 		 $tabRes['listeCategories']=array();
	// 		 while($ligne=$stmt->fetch(PDO::FETCH_OBJ)){
	// 		    $tabRes['listeCategories'][]=$ligne;
	// 		 }
	// 	}catch(Exception $e){
	// 	}finally{
	// 		unset($unModele);
	// 	}
	// }

	// function enlever(){
	// 	global $tabRes;
	// 	$idf=$_POST['numE'];
	// 	try{
	// 		$requete="SELECT * FROM films WHERE id=?";
	// 		$unModele=new filmsModele($requete,array($idf));
	// 		$stmt=$unModele->executing();
	// 		if($ligne=$stmt->fetch(PDO::FETCH_OBJ)){
	// 			$unModele->enleverFichier("images",$ligne->image);
	// 			$requete="DELETE FROM films WHERE id=?";
	// 			$unModele=new filmsModele($requete,array($idf));
	// 			$stmt=$unModele->executing();
	// 			$tabRes['action']="enlever";
	// 			$tabRes['msg']="Le film ".$idf." a bien été supprimé";
	// 		}
	// 		else{
	// 			$tabRes['action']="enlever";
	// 			$tabRes['msg']="Le film ".$idf." est introuvable";
	// 		}
	// 	}catch(Exception $e){
	// 	}finally{
	// 		unset($unModele);
	// 	}
	// }
	//
	// function fiche(){
	// 	global $tabRes;
	// 	$idf=$_POST['numF'];
	// 	$tabRes['action']="fiche";
	// 	$requete="SELECT * FROM films WHERE id=?";
	// 	try{
	// 		 $unModele=new filmsModele($requete,array($idf));
	// 		 $stmt=$unModele->executing();
	// 		 $tabRes['fiche']=array();
	// 		 if($ligne=$stmt->fetch(PDO::FETCH_OBJ)){
	// 		   $tabRes['fiche']=$ligne;
	// 			 $tabRes['OK']=true;
	// 		 }
	// 		 else{
	// 			 $tabRes['OK']=false;
	// 		 }
	// 	}catch(Exception $e){
	// 	}finally{
	// 		unset($unModele);
	// 	}
	// }
	//
	// function modifier(){
	// 	global $tabRes;
	// 	$titre=$_POST['titreF'];
	// 	$res=$_POST['resF'];
	// 	$categ=$_POST['categF'];
	// 	$annee=$_POST['anneeF'];
	// 	$duree=$_POST['dureeF'];
	// 	$prix=$_POST['prixF'];
	// 	$idf=$_POST['idf'];
	// 	try{
	// 		$requette="SELECT image FROM films WHERE id=?";
	// 		$unModele=new filmsModele($requette,array($idf));
	// 		$stmt=$unModele->executing();
	// 		$ligne=$stmt->fetch(PDO::FETCH_OBJ);
	// 		$anciennePochette=$ligne->image;
	// 		$pochette=$unModele->verserFichier("images", "pochette",$anciennePochette,$titre);
	// 		$requete="UPDATE films SET titre=?, realisateur=?, categorie=?, annee=?, duree=?, image=?, prix=? WHERE id=?";
	// 		$unModele=new filmsModele($requete,array($titre,$res,$categ,$annee,$duree,$pochette,$prix,$idf));
	// 		$stmt=$unModele->executing();
	// 		$tabRes['action']="modifier";
	// 		$tabRes['msg']="Le film $idf a bien été modifié";
	// 	}catch(Exception $e){
	// 	}finally{
	// 		unset($unModele);
	// 	}
	// }
	//******************************************************
	//Contr�leur
	$action=$_POST['action'];
	switch($action){
		// case "enregistrer" :
		// 	enregistrer();
		// break;
		case "lister" :
			lister();
		break;
		// case "listerCateg" :
		// 	listerCateg();
		// break;
		// case "enlever" :
		// 	enlever();
		// break;
		// case "fiche" :
		// 	fiche();
		// break;
		// case "modifier" :
		// 	modifier();
		// break;
	}
	echo json_encode($tabRes);
