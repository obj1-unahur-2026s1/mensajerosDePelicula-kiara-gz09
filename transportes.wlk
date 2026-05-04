object camion {
    var property peso = 100 
    var cantAcoplados = 0

    method cantAcoplados() {
      return cantAcoplados
    }
    method cambiarCantAcoplados(nuevaCant) {
      cantAcoplados = nuevaCant
    }
    method pesoTotal() {
      return self.peso() + (cantAcoplados*500)
    }
}

object bici {
  var property peso = 5
  method pesoTotal() {
    return self.peso()
  } 
}