object pepe {
	var property categoria = cadete
    var property bonoPorResultados = montoFijo
    var property bonoPorPresentismo = normal    
    var property faltas = 3

    method sueldo(){
        return self.neto() + self.bonoDeResultado() + self.bonoDePresentismo()
    }
    method neto()= categoria.neto()
    method bonoDeResultado()= bonoPorResultados.bonoResultado()
    method bonoDePresentismo()= bonoPorPresentismo.bonoPresentismo(self)
    method faltas()= faltas
}


object sofia{
    var property categoria = cadete
    var property bonoPorResultados = porcentaje
    var property faltas = 1

    method sueldo(){
        return self.neto() + self.bonoDeResultado()
    }

    method neto()= 1.3*categoria.neto()
    method bonoDeResultado()= bonoPorResultados.bonoResultado()
    method faltas()= faltas
}

object roque{
    var property bonoPorResultados = porcentaje

    method sueldo(){
        return self.neto() + self.bonoDeResultado() + 9000
    }
    method bonoDeResultado()= bonoPorResultados.bonoResultado()
    method neto()= 28000
}

object ernesto{
    var compañero = sofia
    var property bonoPorPresentismo = nulo
    var property faltas = 0

    method sueldo(){
        return compañero.neto() + self.bonoDePresentismo()
    }
    method bonoDePresentismo()= bonoPorPresentismo.bonoPresentismo(self)
    method cambiarCompañero(compañeroNuevo){
        compañero = compañeroNuevo
    }
    method faltas()= faltas
}


object cadete {
    method neto()= 20000
}

object gerente {
    method neto()= 15000
}

object vendedor{
    var muchasVentas = true
    method neto(){
        if (muchasVentas){
            1.25*16000}
            else 16000
    }

    method activarAumentoPorMuchasVentas(){
        muchasVentas = true
    }

    method desactivarAumentoPorMuchasVentas(){
        muchasVentas = false
    }
}

object medioTiempo{
    var categoriaBase = gerente
    method neto()= 0.5*categoriaBase.neto()
    method cambiarCategoria(nuevaCategoria){
        categoriaBase = nuevaCategoria
    }
}

object porcentaje{
    method bonoResultado(empleado)= empleado.neto() * 0.1
}

object montoFijo{
    method bonoResultado() = 800
}

object nulo{
    method bonoResultado() = 0
    method bonoPresentismo(empleado) = 0
}

object normal{
    method bonoPresentismo(empleado){
        if (empleado.faltas()==0){
            2000} 
            else if (empleado.faltas()==1){
                        1000}
                        else 0
        }
}

object ajuste{
    method bonoPresentismo(empleado){
        if (empleado.faltas()==0){
            100} 
            else 0
        }
}

object demagógico{
    method bonoPresentismo(empleado){
        if (empleado.neto() <= 18000){
            500}
            else 300
    }
}