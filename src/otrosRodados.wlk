class Corsa {
var property color

method capacidad() {return 4}
method velocidadMaxima() {return 150}
method peso() {return 1300}		

}

class Kwid {
var tanqueAdicional = false

method tanqueAdicional() {tanqueAdicional = not tanqueAdicional}	
method capacidad() {if(tanqueAdicional) {return 3} else {return 4}}
method velocidadMaxima() {if(tanqueAdicional) {return 120} else {return 110}}
method color() {return "azul"}
method peso() {if(tanqueAdicional) {return 1350} else {return 1200}}	
}

class AutosEspeciales {

var property capacidad
var property velocidadMaxima
var property peso
var property color

}
