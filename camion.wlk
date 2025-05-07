import cosas.*

object camion {

    var cosas = []
    var bultos = 0

    method cargar(algo){


        cosas.add(algo)
        algo.sufrirCambios()
    }

    method descargar(algo){
        if(cosas.contains(algo)){
            cosas.remove(algo)
        }
    }

    method peso() = 1000 + cosas.sum()

    method pesoPar() = cosas.any({c=>c.peso()%2 != 0})

    method primerObjetoConPeligrosidad_(peligro) = cosas.find({c=>c.peligrosidad() >= peligro})

    method cosasConPeligroMayorOIgualA(peligro) = cosas.filter({c=>c.peligrosidad() >= peligro})

    method camionExcedePesoMaximo() = self.peso() < 2500

    method puedeCircularEnRuta(peligro){

        return self.camionExcedePesoMaximo() and cosas.any({c=>c.peligrosidad() >= peligro}) 
    }

    method pesoEntre_Y_(minimo, maximo) = cosas.find({c=>c.peso().between(minimo, maximo)})

    method objetoMasPesado() = cosas.max({c=>c.peso()})
}
