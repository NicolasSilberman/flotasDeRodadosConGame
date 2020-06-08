import wollok.game.*
import colores.*

class Corsa {
var property image = "autitorojo.png"
var property position
var property posicionesRecorridas = []
var property color

method capacidad() {return 4}
method velocidadMaxima() {return 150}
method peso() {return 1300}	

//game
method moverArriba(){self.position(self.position().up(1))}
method moverAbajo(){self.position(self.position().down(1))}
method moverDerecha(){self.position(self.position().right(1))}
method moverIzquierda(){self.position(self.position().left(1))}

//consultas posicion
method moveteA(unaPosicion) {
	self.position(unaPosicion)  
	self.posicionesRecorridas().add(unaPosicion)
}

method pasoPor(posicion) {return posicionesRecorridas.contains(posicion)}
method pasoPorFila(numero) {return posicionesRecorridas.map({f=>f.x()}).contains(numero) }
method recorrioFilas(lista_de_numeros) {return posicionesRecorridas.map({f=>f.x()}).asSet() == lista_de_numeros.asSet()
}	

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
