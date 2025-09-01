object pepe {
	var property categoria = cadete
    var property bonoPorResultados = porcentaje
    var property bonoPorPresentismo = nulo
    var property faltas = 1

    method sueldo(){
        return self.neto() + self.bonoDeResultado() + self.bonoDePresentismo()
    }
    method neto()= categoria.neto()
    method bonoDeResultado()= bonoPorResultados.bonoResultado()
    method bonoDePresentismo()= bonoPorPresentismo.bonoPresentismo(self)
    method faltas()= faltas
}

object cadete {
    method neto()= 20000
}

object gerente {
    method neto()= 15000
}

object porcentaje{
    method bonoResultado(empleado)= empleado.neto() * 0.1
}

object montoFijo{
    method bobonoResultadono() = 800
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