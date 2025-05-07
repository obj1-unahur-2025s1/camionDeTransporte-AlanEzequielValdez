object knightRider{

    const peso = 500
    const peligrosidad = 10

    method peso() = peso

    method peligrosidad() = peligrosidad
}

object bumblebee{
    
    const peso = 800
    var peligrosidad = 15
    var estaTransformadoEnAuto = true

    method peso() = peso

    method peligrosidad() = peligrosidad

    method transformar(){
        if(estaTransformadoEnAuto){
            estaTransformadoEnAuto = false
            peligrosidad = 30
        } else{
            estaTransformadoEnAuto = true
            peligrosidad = 15
        }
    }

    method esUnAuto() = estaTransformadoEnAuto
}

object paqueteDeLadrillos{
    
    var peso = cantidadLadrillos*2
    const peligrosidad = 2
    var cantidadLadrillos = 0

    method peso() = peso

    method peligrosidad() = peligrosidad

    method cantidadDeLadrillos() = cantidadLadrillos

    method cambiarCantidadDeLadrillos(nuevaCantidad){

        cantidadLadrillos = nuevaCantidad
    }
}

object arenaAGranel{
    
    var peso = 0
    const peligrosidad = 1

    method peso() = peso

    method peligrosidad() = peligrosidad

    method cambiarPeso(nuevoPeso){

        peso = nuevoPeso
    }
}

object bateriaAntiaerea{
    
    var peso = 300
    var peligrosidad = 100
    var tieneMisiles = true

    method peso() = peso

    method peligrosidad() = peligrosidad

    method tieneMisiles() = tieneMisiles

    method transformar(){
        if(tieneMisiles){
            tieneMisiles = false
            peso = 200
            peligrosidad = 0
        } else{
            tieneMisiles = true
            peso = 300
            peligrosidad = 100
        }
    }

}

object contenedorPortuario{
    var peso = 100
    var peligrosidad = 0
    var cosas = #{}

    method peso(){

        return peso + cosas.sum({p=>p.peso()})
    }

    method peligrosidad() {

        return cosas.max({p=>p.peligrosidad()})
    }

    method agregar(algo){
        cosas.add(algo)
    }
}

object residuosRadioactivos{
    var peso = 0
    const peligrosidad = 200

    method peso() = peso

    method peligrosidad() = peligrosidad

    method cambiarPeso(nuevoPeso) {

        peso = nuevoPeso
    }
}

object embalajeDeSeguridad{
    var embalaje = #{}

    method peso() = embalaje.peso()

    method peligrosidad() = embalaje.peligrosidad()/2

    method embalar(objeto){
        if (embalaje.size() < 1) {

            embalaje.add(objeto)
        }
    }
}
