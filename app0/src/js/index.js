'use strict';

const btnSet = document.getElementById('btnSet');

btnSet.addEventListener('click', captureNombre, false);

function captureNombre () {
	let nombre = prompt('Cual es tu nombre?');
	alertNombre(nombre);
}

function alertNombre(string) {
	string = stringToUppercase(string);
	alert('El nombre capturado es '+ string);
}

function stringToUppercase(string) {
	return string.toUpperCase();
} 

function alertAccion () {
	alert('Se hizo click en boton settings');
}

function tirarAlArco () {
	window.confirm('Deseas configurar la app ?');
}


let estado = [ 
	{
	"usuario":"Jeronimo Morales Ardila",
	"status": "Ocupado",
	"twits":51,
	"likes":17,
	},
	{
	"usuario":"Daniela Ardila Lopez",
	"status": "No Interrumpir",
	"twits":154,
	"likes":39,
	},
	{
	"usuario":"Santiago Hernandez",
	"status": "Casado",
	"twits":890,
	"likes":197,
	},

];


const dJero = document.getElementById('dataEstadoJero');
let data = [];

estado.forEach((el, index) => {
	data += `
		<div >${el.usuario}</div>
		<div >${el.status}</div>
		<div >${el.twits}</div>
		<div >${el.likes}</div>
	`;	
});

dJero.innerHTML = data;
