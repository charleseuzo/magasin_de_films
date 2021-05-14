// Charles Paquet TP3 Matricule: 1056050 IFT1147-A-A20 - Programmation serveur avec PHP
// vue films
function listerF(listFilms){
	var taille;
	var rep="<h1 id='h1cardFilm'>Films</h1><br>";
	rep+="<div class='cards'>";
  taille=listFilms.length;
  for(var i=0; i<taille; i++){
			var id= listFilms[i].id;
			var titre=listFilms[i].titre;
			var realisateur=listFilms[i].realisateur;
			var categorie=listFilms[i].categorie;
			var annee=listFilms[i].annee;
			var duree=listFilms[i].duree;
			var prix=listFilms[i].prix;
			rep+="<div class='card' onmouseover='showPanel(this,ul"+id+")' onmouseout='normalImg(this,ul"+id+")'>";
			rep+="<input class='img' type='image'   src='assets/images/films/"+listFilms[i].image+"' alt='Card image cap'><ul id='ul"+id+"' class='list-group list-group-flush'>";
	    // rep+="<li class='list-group-item'>"+titre+"</li>";
	    // rep+="<li class='list-group-item'>"+realisateur+"</li>";
	    // rep+="<li class='list-group-item'>"+categorie+"</li>";
	    // rep+="<li class='list-group-item'>"+annee+"</li>";
	    // rep+="<li class='list-group-item'>"+duree+" minutes</li>";
	    // rep+="<li class='list-group-item'>"+prix+"</li>";
			rep+="<li class='list-group-item'>Numéro d'identifiant: "+id+"</li></ul></div>";
  }
  rep+="</div></div><br>";
  $('#affichecard').html(rep);
}



// var areas = document.getElementsByClassName('card');
// var oMap = document.getElementsByClassName('cards');
// for(i=0; i < oMap.areas.length; i++){
// 	oMap.areas[i].onmouseover=function(){
// 	var area=this;
// 	var delay=setTimeout(function(){showHideDivs(area.indx);},100);
// 	area.onmouseout=function(){clearTimeout(delay);};
// 	}
// }

//
// function listerCateg(listCategs){
// 	var taille;
// 	var rep="<div class='sidebar-heading'>Nos films</div><div id='list-group-flush' class='list-group list-group-flush'>";
// 	taille=listCategs.length;
// 	for(var i=0; i<taille; i++){
// 		rep+="<input type='button' onclick='lister()' class='input_categorie' name='categorie' value='"+listCategs[i].categorie+"'>";
// 	}
// 	rep+="</div>";
// 	$('#sidebar-wrapper').html(rep);
// }
//
// function afficherFiche(reponse){
//   var uneFiche;
//   if(reponse.OK){
// 		uneFiche=reponse.fiche;
// 		$('#idf').val(uneFiche.id);
// 		$('#titreF').val(uneFiche.titre);
// 		$('#resF').val(uneFiche.realisateur);
// 		$('#categF').val(uneFiche.categorie);
// 		$('#anneeF').val(uneFiche.annee);
// 		$('#dureeF').val(uneFiche.duree);
// 		$('#prixF').val(uneFiche.prix);
// 		$('#divFormFiche').show();
// 		document.getElementById('divFormFiche').style.display='block';
//   }else{
// 	$('#messages').html("Film "+$('#titre').val()+" introuvable");
// 	setTimeout(function(){ $('#messages').html(""); }, 5000);
//   }
// }

var filmsVue=function(reponse){
  var action=reponse.action;
	switch(action){
		// case "enregistrer" :
		// case "enlever" :
		// case "modifier" :
		// 	$('#messages').html(reponse.msg);
		// 	setTimeout(function(){ $('#messages').html(""); }, 5000);
		//   window.location.reload();
		// break;
		case "lister" :
			listerF(reponse.listeFilms);
		break;
		// case "listerCateg" :
		// 	listerCateg(reponse.listeCategories);
		// break;
		// case "fiche" :
		// 	afficherFiche(reponse);
		// break;
	}
}
