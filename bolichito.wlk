import objetos.*
import personas.*
/*
Agregar al modelo un bolichito, que vende dos objetos: uno está en la vidriera, otro está en el mostrador.
Estos objetos van cambiando con el tiempo.

El bolichito debe poder responder si es brillante o no. Eso depende de que los 2 objetos que tiene (uno en el mostrador y otro en la vidriera) sean ambos brillantes. 

Otra cosa que nos debe poder decir es si es monocromático, lo cual será cierto si los 2 objetos que exhibe son del mismo color.

Y también nos interesa saber si el bolichito está equilibrado, lo cual será verdadero si el objeto del mostrador pesa más que el de la vidriera.

Debemos poder preguntarle al bolichito si tiene algún objeto exhibido de un determinado color y además, si puede mejorar, lo cual será cierto si está desequilibrado o es monocromático.

Por último, tenemos que poder preguntarle si puede ofrecerle algo a una persona determinada que se pasa como argumento, lo cual será verdadero cuando alguno de los objetos exhibidos le gusta a esa persona. 
  P.ej. si el bolichito tiene la remera en la vidriera y la pelota en el mostrador,
  entonces puede ofrecerle algo a Estefanía (la remera) y a Juan (la pelota) 
  pero no a Luisa (porque no le gustan ni la remera ni la pelota).
*/

object bolichito{
    var mostrador=pelota
    var vidriera=remera
    method esBrillante(){
        return mostrador.esBrillante() and vidriera.esBrillante()
    } 
    method esMonocromático() {
        return mostrador.color() == vidriera.color()
    } 
    method  estaEquilibrado() {
        return mostrador.peso() > vidriera.peso()
    }
//Debemos poder preguntarle al bolichito si tiene algún objeto exhibido de un determinado color y además, si puede mejorar, lo cual será cierto si está desequilibrado o es monocromático. 
    method tieneObjetoDeColor(unColor){
        return mostrador.color() == unColor or vidriera.color() == unColor
    }
    method puedeMejorar(){
        return self.estaEquilibrado() or self.esMonocromático()
    }
    method puedeOfrecerAlgo(unaPersona){
        return unaPersona.leGusta(vidriera) or unaPersona.leGusta(mostrador)
    }
    // Por último, tenemos que poder preguntarle si puede ofrecerle algo a una persona determinada que se pasa como argumento, lo cual será verdadero
    // cuando alguno de los objetos exhibidos le gusta a esa persona. 
  //P.ej. si el bolichito tiene la remera en la vidriera y la pelota en el mostrador,
  //entonces puede ofrecerle algo a Estefanía (la remera) y a Juan (la pelota) 
  //pero no a Luisa (porque no le gustan ni la remera ni la pelota).
}

