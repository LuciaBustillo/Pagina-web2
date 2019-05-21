var primera = document.getElementsByTagName("img")[3];
var anterior = document.getElementsByTagName("img")[4];
var siguiente = document.getElementsByTagName("img")[5];
var ultima = document.getElementsByTagName("img")[6];

var x = 0;

var imagen = document.getElementsByTagName("img")[2];
var imagenes = ["img/frios/oburbuja.png","img/frios/celestial.jpg","img/frios/escama.jpg","img/frios/leon.jpg","img/frios/oranda.jpg","img/frios/oteles.jpg","img/frios/ranchu.jpg","img/frios/ryukin.jpg"];

var first = function(event) {
	imagen.src = imagenes[0];
}

var previous = function(event) {
	x--;
	if (x<0) {
		x = imagenes.length-1;
	}
	imagen.src = imagenes[x];
}

var next = function(event) {
	x++;
	x %= imagenes.length;
	imagen.src = imagenes[x];
}

var last = function(event) {
	imagen.src = imagenes[imagenes.length-1];
}

primera.addEventListener('click', first);
anterior.addEventListener('click'; previous);
siguiente.addEventListener('click', next);
ultima.addEventListener('click', last):