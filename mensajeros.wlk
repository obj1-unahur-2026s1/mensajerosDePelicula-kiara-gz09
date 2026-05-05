import transportes.*
//Mensajeros
object roberto {
  var transporte = bici
  var peso = 50
  method pesoActual(){
    return peso
  }
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
  method transporteActual() {
    return transporte
  }
  method cambiarTransporte(nuevoTrasporte) {
    transporte = nuevoTrasporte
  }
  method peso() {
    return self.pesoActual() + transporte.pesoTotal()
  }
  method puedeLlamar() {
    return true
  }
}

object chuck {
  var peso = 80

  method peso() {
    return peso
  }
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
  method puedeLlamar() {
    return true
  }

}

object neo {
  var peso = 0
  var credito = false
  method peso() {
    return peso
  }
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
  method puedeLlamar() {
    return credito
  }
  method cargarCredito() {
    credito = true
  }

}