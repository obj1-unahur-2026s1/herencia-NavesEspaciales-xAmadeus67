


class Nave {
  var velocidad
  var direccion

  method acelerar(unaVelocidad) {velocidad = unaVelocidad.min(100000)} 
  method desacelerar(unaVelocidad) {velocidad = unaVelocidad.max(0)}

  method irHaciaElSol() {direccion = 10}
  method escaparDelSol() {direccion = -10}
  method ponerseParaleloAlSol() {direccion = 0}

  method acercarseUnPocoAlSol() {
    direccion += 1.min(10)
  }
  method alejarseUnPocoDelSol() {
    direccion -= 1.max(-10)
  }

}

class Naves-baliza inherits Nave {
  var colorDeBaliza = "rojo"

  method cambiarColorDeBaliza(colorNuevo) {
    colorDeBaliza = colorNuevo
  }
}

class NavesDePasajeros inherits Nave {
  var cantPasajeros

  method cargarRacionDe(unaRacion, unaCantidad) {
    unaRacion += unaCantidad
  }
  method descargarRacionDe(unaRacion, unaCantidad) {
    unaRacion -= unaCantidad
  }
}