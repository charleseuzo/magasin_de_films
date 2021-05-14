// Charles Paquet TP3 Matricule: 1056050 IFT1147-A-A20 - Programmation serveur avec PHP
// Fonctions javascript globales

function rendreVisible(elem,elem1){
	var x = document.getElementById(elem);
	var y = document.getElementById(elem1);
	toggleDisplay();
	if (x.style.display === "block") {
    x.style.display = "none";
  }
	else if (y.style.display === "block") {
		y.style.display = "none";
		x.style.display = "block";
	}
	else {
    x.style.display = "block";
  }
}

function rendreInvisible(elem){
	var x = document.getElementById(elem);
	x.style.display='none';
}

function showPanel(x,z) {
	var y = document.getElementById("overlay");
	x.style.transform = "scale(1.2)";
	x.style.zIndex = "3";
	y.style.display = "block";
	z.style.display = "block";
	z.style.zIndex = "3";
}

function normalImg(x,z) {
	var y = document.getElementById("overlay");
	x.style.transform = "scale(1)";
	y.style.display = "none";
	x.style.zIndex = "1";
	z.style.display = "none";
	z.style.zIndex = "1";
}

function toggleDisplay() {
	var x = document.getElementById("overlay");
	var y = document.querySelectorAll(".panel");
	x.style.display = "none";
	y.forEach((item, i) => {
		item.style.display = "none";
	});
}

function submitForm(formulaire){
	document.getElementById(formulaire).submit();
}

function showAjouter(elem){
	var x = document.getElementById(elem);
	if (x.style.display === "block") {
    x.style.display = "none";
  }
	else {
    x.style.display = "block";
  }
}

function valider(){
	var formEnreg=document.getElementById('formEnreg');
	var num=document.getElementById('num').value;
	var titre=document.getElementById('titre').value;
	var duree=document.getElementById('duree').value;
	var res=document.getElementById('res').value;
	var numRegExp=new RegExp("^[0-9]{1,4}$");
	if(num!="" && titre!="" && duree!="" && res!="")
		if(numRegExp.test(num))
			formEnreg.submit();
}
