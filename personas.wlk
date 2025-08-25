import objetos.*
//- _Rosa_: le gustan las cosas que pesan 2 kilos (o sea 2000 gramos) o menos. 
object _Rosa_ {
    method leGusta(unaCosa) {
        return unaCosa.peso() <=2000   
    } 
}
//_Estefanía_: le gustan las cosas de colores fuertes.
object _Estefanía_ {
  method leGusta(unaCosa) {
        return unaCosa.color().esColorFuerte()
  }
}
//- _Luisa_: le gustan las cosas que sean de un material que brilla.

object _Luisa_ {
    method leGusta(unaCosa) {
      return unaCosa.material().esBrillante()
    }

}
//- _Juan_: le gustan las cosas que, o bien son de un color que no es fuerte, o bien pesan entre 1200 y 1800 gramos.
object _Juan_ {
    method leGusta(unaCosa) {
      return not unaCosa.esColorFuerte() 
          or unaCosa.peso() > 1200 and unaCosa.peso() <1800

    }
}


