package uqbar.tpFutbol.inscripcion

import uqbar.tpFutbol.domain.Jugador
import uqbar.tpFutbol.domain.Fecha

class NotaDeRechazo {
	
	@Property Jugador jugador
	@Property Fecha fecha
	@Property String motivo
	
	new(Jugador jugador, String motivo, Fecha fecha){
		this.jugador = jugador
		this.motivo = motivo
		this.fecha = fecha
	}
}