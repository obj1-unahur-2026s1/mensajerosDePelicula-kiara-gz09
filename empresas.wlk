import mensajeros.*
import paquetes.*

object mensajeria {
    const mensajeros = []

    method contratarUnMensajero(unMensajero){
        mensajeros.add(unMensajero)

    }

    method despedirUnMensajero(unMensajero){
        mensajeros.remove(unMensajero)
    }

    method despedirATodos(unMensajero){
        mensajeros.clear()
    }

    method esGrande() {
        return mensajeros.size() > 2
    }

    method elPrimerEmpleadoPuedeEntregar(unPaquete){
        return unPaquete.puedeEntregarse(self.primerEmpleado())
    }

    method primerEmpleado() {
        return mensajeros.first() // lista .first() se usa en listas
    }

    method pesoUltimoMensajero() = self.ultimoMensajero().pesoTotal()
    method ultimoMensajero() = mensajeros.last()

    method pesoTotalDeLosMensajeros() = 
        mensajeros.sum({m => m.pesoTotal()}) // se usa sum(unTransformer) porque es una lista distinta a numeros

    method pesosTotales() {
      return mensajeros.map({m => m.pesoTotal()}).sum()
    }

    method alMenosUnMensajeroPuedeEntregar(unPaquete) {
        return mensajeros.any({m => unPaquete.puedeEntregarse(m)})
    }

    method losMensajerosQuePuedenEntregar(unPaquete) {
        return mensajeros.filter({m => unPaquete.puedeEntregarse(m)})
    }
}
