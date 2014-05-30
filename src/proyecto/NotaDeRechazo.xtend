package proyecto

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