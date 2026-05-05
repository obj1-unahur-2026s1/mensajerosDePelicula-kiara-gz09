import mensajeros.*
//Destinos
object puenteBroklyn {
  method puedePasar(mensajero) {
    return mensajero.peso() < 1000
  }
}

object matrix {
  method puedePasar(mensajero) {
    return mensajero.puedeLlamar()
  }
}