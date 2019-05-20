var primera = document.getElementById('primera');
var ultima = document.getElementById('ultima');
var anterior = document.getElementById('anterior');
var siguiente = document.getElementById('siguiente');

var x = 0;
var interval;

var imagen = document.querySelector('.imagen');
var imagenes = ["../img/salados/img0.jpg","../img/salados/img1.jpg","../img/salados/img2.jpg","../img/salados/img3.jpg","../img/salados/img4.jpg","../img/salados/img5.jpg"];

var icono = document.getElementById('play_stop');
var iconos = ["../img/iconos/play.png","../img/iconos/stop.png"];
var pulsada = new Boolean(true);



var cambiarPrimera = function(event){
	imagen.src = imagenes[0];
};

var cambiarAnterior = function(event){
	x--;
	if (x<0){
		x = imagenes.length-1;
	}
	imagen.src = imagenes[x];
};

var cambiarSiguiente = function(event){
	x++;
	x %= imagenes.length;
	imagen.src = imagenes[x];
};

var cambiarUltima = function(event){
	imagen.src = imagenes[imagenes.length-1];
};

var cambiarPlay = function(event){
	interval = setInterval(cambiarSiguiente,2000);
};

var cambiarStop = function(event){
	clearInterval(interval);
};

var cambiarPlayStop = function(event){
	if (pulsada == true){
		icono.src = iconos[1];
		pulsada = false;
		cambiarPlay();
	} else {
		icono.src = iconos[0];
		pulsada = true;
		cambiarStop();
	}
};

primera.addEventListener('click', cambiarPrimera);
anterior.addEventListener('click', cambiarAnterior);
siguiente.addEventListener('click', cambiarSiguiente);
ultima.addEventListener('click', cambiarUltima);
icono.addEventListener('click', cambiarPlayStop);