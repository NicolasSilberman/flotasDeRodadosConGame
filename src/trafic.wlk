object trafic {

var property interior = popular
var property motor = bataton

method capacidad() {return interior.capacidad()}
method velocidadMaxima() {return motor.velocidad()}
method color() {return "blanco"}
method peso() {return 4000 + interior.peso() + motor.peso()}
		
}

object comodo
{
	method capacidad() {return 5}
	method peso() {return 700}
}

object popular
{
	method capacidad() {return 12}
	method peso() {return 1000}
}

object pulenta
{
	method velocidad() {return 130}
	method peso() {return 800}
}

object bataton
{
	method velocidad() {return 80}
	method peso() {return 500}
}