package proyecto

import java.util.Date

class Fecha {
	
	@Property int dia
	@Property int mes
	@Property int anio
	
	def fechaDeHoy() {
		var hoy = new Fecha()
		var today = new Date()
		hoy.dia = today.getDate()
		hoy.mes = today.getMonth()
		hoy.anio = today.getYear()
		return hoy
	}
	
}