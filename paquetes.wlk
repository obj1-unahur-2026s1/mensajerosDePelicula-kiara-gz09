import destinos.*
import mensajeros.*

object paquete{
    var estaPago = false
    var property destino = puenteBroklyn
    var precio = 30
    method estado(){
        return estaPago
    }
    method registrarPago() {
      estaPago = true
    }
    method rechazarPago() {
      estaPago = false
    }
    method puedeSerEntregadoPor(mensajero) {
      return estaPago && destino.puedePasar(mensajero)
    }
    method precio(){
        return precio
    }
    method modificarPrecio(nuevoPrecio) {
      precio = nuevoPrecio
    }

}