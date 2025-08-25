//Como **materiales** tenemos: el cobre y el vidrio que brillan; el lino, la madera
// y el cuero que no.
object cobre {
  method  esBrillante()=true 
}
object vidrio {
  method esBrillante() =true 
}
object lino {
  method esBrillante() =false 
}

object madera {
  method esBrillante() =false 
}
object cuero {
  method esBrillante() =false 
}

//Como **colores** contemplar (al menos) rojo, verde, celeste y pardo. 
//De estos, los dos primeros son fuertes, los otros no.

object rojo {
  method esColorFuerte() = true 
}
object verde {
  method  esColorFuerte() =true 
}
object celeste {
  method esColorFuerte() =false 
}
object pardo {
  method esColorFuerte() =false 
}
object naranja {
  method esColorFuerte() = true 
}

/*Como **materiales** tenemos: el cobre y el vidrio que brillan; el lino, la madera y el cuero que no.

Finalmente, considerar (al menos) estos objetos:
  - una _remera_ roja de lino, pesa 800 gramos.
  - una _pelota_ parda de cuero, pesa 1300 gramos.
  - una _biblioteca_ verde de madera, pesa 8000 gramos.
  - un _muñeco_ celeste de vidrio, de peso variable.
  - una _placa_ de cobre, de peso y color variables.
  */
object remera {
  method color() =verde //roja
  method material() =madera //lino
  method peso() =800  
  method esBrillante() =madera.esBrillante()  
  method esColorFuerte() =verde.esColorFuerte()
}
object pelota {
  method color() =pardo
  method material() = cuero 
  method peso() =1300   
  method esBrillante() =cuero.esBrillante() 
  method esColorFuerte() =pardo.esColorFuerte()
}
//  - una _biblioteca_ verde de madera, pesa 8000 gramos.
object biblioteca {
  method color() = verde
  method material() = madera
  method peso() = 8000 
  method esBrillante() = madera.esBrillante() 
  method esColorFuerte() = verde.esColorFuerte()
}
object muñeco{
  var peso=0
  method color() = celeste 
  method material() =vidrio 
  method asignarPeso(unPeso) {
    peso=unPeso
  }
  method esBrillante() =vidrio.esBrillante() 
  method esColorFuerte() =celeste.esColorFuerte()
} 
//  - una _placa_ de cobre, de peso y color variables.
object placa {
  var peso=0
  var color=verde
  method material() =cobre
  //method  peso() = peso
  method esColor() = color
  method peso() = peso
  method verColor() =color  
  method asignarPeso(unPeso) {
    peso=unPeso
  }
  method asignarColor(unColor) {
    color=unColor
  }

  method esBrillante() =cobre.esBrillante() 
}

/*- un _arito_ celeste de cobre, que pesa 180 gramos.
- un _banquito_ de madera que pesa 1700 gramos. 
  Al principio es naranja, pero puede cambiar de color. 
  El naranja es un color fuerte.
- una _cajita_ roja de cobre, que tiene un objeto adentro. 
  Este objeto puede ser cualquiera de los definidos previamente, y puede cambiar.
  El peso de la cajita es de 400 gramos más el peso de lo que tiene adentro.
*/

object arito{
  method color()=celeste 
  method material()=cobre
  method peso()=1700
}
object banquito{
  var color=naranja
  method material()=madera
  method peso()=1700
  method color(unColor){
    color=unColor
  }
}
object cajita{
  var objetoDentro=remera
  var peso=400
  method color()=rojo 
  method material()=cobre
  method cambiarObjeto(unObjeto){
    objetoDentro=unObjeto
    peso=peso + objetoDentro.peso()
  }
}