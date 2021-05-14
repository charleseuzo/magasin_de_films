/// Charles Paquet TP3 Matricule: 1056050 IFT1147-A-A20 - Programmation serveur avec PHP
//requêtes films  $.ajax({})
// function enregistrer(){
// 	var formFilm = new FormData(document.getElementById('formEnreg'));
// 	formFilm.append('action','enregistrer');
// 	$.ajax({
// 		url : 'movies/filmsControleur.php',
// 		type : 'POST',
// 		data : formFilm,
// 		dataType : 'json',
// 		contentType : false,
// 		processData : false,
// 		success : function (reponse){
// 			filmsVue(reponse);
// 		},
// 		fail : function (err){
// 			alert("pas marché enregistrer");
// 		}
// 	});
// }

function lister(){
	var formFilm = new FormData();
	formFilm.append('action','lister');
	$.ajax({
		url : 'movies/filmsControleur.php',
		type : 'POST',
		data : formFilm,
		dataType : 'json',
		contentType : false,
		processData : false,
		success : function (reponse){
			filmsVue(reponse);
		},
		fail : function (err){
      alert("pas marché lister");
		}
	});
}

// function listerCat(){
// 	var formCat = new FormData();
// 	formCat.append('action','listerCateg');
// 	$.ajax({
// 		url : 'movies/filmsControleur.php',
// 		type : 'POST',
// 		data : formCat,
// 		dataType : 'json',
// 		contentType : false,
// 		processData : false,
// 		success : function (reponse){
// 			filmsVue(reponse);
// 		},
// 		fail : function (err){
//       alert("pas marché listerCat");
// 		}
// 	});
// }

$(document).ready(function() {
	lister();
	// listerCat();
});

// function enlever(){
// 	var leForm = document.getElementById('formEnlever');
// 	var formFilm = new FormData(leForm);
// 	formFilm.append('action','enlever');
// 	$.ajax({
// 		type : 'POST',
// 		url : 'movies/filmsControleur.php',
// 		data : formFilm,
// 		contentType : false,
// 		processData : false,
// 		dataType : 'json',
// 		success : function (reponse){
// 			filmsVue(reponse);
// 		},
// 		fail : function (err){
// 			alert("pas marché enlever");
// 		}
// 	});
// }
//
// function obtenirFiche(){
// 	$('#divFiche').hide();
// 	var formFilm = new FormData(document.getElementById('formFiche'));
// 	formFilm.append('action','fiche');
// 	$.ajax({
// 		type : 'POST',
// 		url : 'movies/filmsControleur.php',
// 		data : formFilm,
// 		contentType : false,
// 		processData : false,
// 		dataType : 'json',
// 		success : function (reponse){
// 					filmsVue(reponse);
// 		},
// 		fail : function (err){
// 			alert("pas marché obtenirFiche");
// 		}
// 	});
// }
//
// function modifier(){
// 	var formFilm = new FormData(document.getElementById('formFicheF'));
// 	formFilm.append('action','modifier');
// 	$.ajax({
// 		type : 'POST',
// 		url : 'movies/filmsControleur.php',
// 		data : formFilm,
// 		contentType : false,
// 		processData : false,
// 		dataType : 'json',
// 		success : function (reponse){
// 			$('#divFormFiche').hide();
// 			filmsVue(reponse);
// 		},
// 		fail : function (err){
// 			alert("pas marché modifier");
// 		}
// 	});
// }
