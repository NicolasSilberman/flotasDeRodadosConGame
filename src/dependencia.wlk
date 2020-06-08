import trafic.*
import otrosRodados.*
import pedidos.*

class Dependencias {

var property flota 
var property empleados = 0
var property pedidos 

method quitarDeFlota(rodado) {flota.remove(rodado)}
method quitarPedido(pedido) {pedidos.remove(pedido)}

method pesoTotalFlota() {return flota.sum({f => f.peso()})}
method estaBienEquipada() {return flota.size() >= 3 and flota.all({f => f.velocidadMaxima() >= 100 }) }
method capacidadTotalEnColor(color) 
{
	var flotas = flota.filter({f => f.color() == color})
	return flotas.sum({f => f.capacidad()})
}
method colorDelRodadoMasRapido() {return flota.max({f => f.velocidadMaxima()}).color()}
method capacidadFaltante() {return 0.max(empleados - flota.sum({f => f.capacidad()}))}
method esGrande() {return empleados >= 40 and flota.size() >= 5}

method pasajerosPedidos() {return pedidos.sum({p => p.pasajeros()})}
method esteColorEsIncompatible(color) {return pedidos.all({p => p.coloresRechazados().contains(color)})}
method pedidosSinSatisfacer()
{
	
	return flota.filter({f=> pedidos.forEach({p => p.satisface(f)})})	
	
}

method relajarTodos() {pedidos.forEach({p => p.relajar()})}
}

