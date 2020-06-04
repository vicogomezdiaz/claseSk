'use strict';
let btn0 = document.getElementById('btn0');

btn0.addEventListener('click',bienvenido, false );


function bienvenido() {
	let nombre = document.getElementById('userName');
	alert('Bienvenido '+ nombre.value);
}
