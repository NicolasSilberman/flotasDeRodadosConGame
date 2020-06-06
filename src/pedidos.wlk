import dependencia.*
import otrosRodados.*
import trafic.*

class Pedidos
{
	var property distancia
	var property tiempo
	var property pasajeros
	var property coloresRechazados = []
	
	
	method satisface(auto)
	{

		return auto.velocidadMaxima() - (self.distancia() / self.tiempo()) > 10 and
			auto.capacidad() >= self.pasajeros() and 
			coloresRechazados.all({a=>a != auto.color()})
	
	}
	
	method acelerar(){tiempo -= 1}
	method relajar(){tiempo += 1}
	

}
