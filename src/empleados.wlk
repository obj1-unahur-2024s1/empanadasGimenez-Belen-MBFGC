object galvan{
	var dinero = 0
	var totalCobrado = 0
	var sueldo = 150000
	
	method totalCobrado(){
		return totalCobrado
	}
	
	method sueldo(){
		return sueldo
	}
	
	method cobrarSueldo(){
		dinero +=  self.sueldo()
		totalCobrado += self.sueldo()
		
	}
	
	method sueldoNuevo(sueldoNuevo){
		sueldo = sueldoNuevo 
	}
	
	method gastar(cuanto){
		dinero -= cuanto
	}
	
	method totalDinero(){
		return 0.max(dinero)
	}
	
	method totalDeuda(){
		return 0.min(dinero).abs()
	}
}

object baigorria{
	var dinero = 0
	var dineroPorEmpanadaVendida=150
	var cantidadDeEmpanadasVendidas =0
	
	method venderEmpanadas(cantidad){
		cantidadDeEmpanadasVendidas += cantidad
	}
	
	method cobrarSueldo(){
		dinero += self.sueldo()
		cantidadDeEmpanadasVendidas = 0
	}
	
	method nuevoDineroPorEmpanadaVendida(nuevoDineroPorEmpanada){
		dineroPorEmpanadaVendida=nuevoDineroPorEmpanada
	}
	
	method sueldo(){
		return cantidadDeEmpanadasVendidas * dineroPorEmpanadaVendida 
	}
	
}

object gimenez{
	var dinero = 3000000
	method pagarA(empleado) {
    	dinero -= empleado.sueldo()
    	empleado.cobrarSueldo()
    }
    method fondo(){
    	return dinero
    }
}
