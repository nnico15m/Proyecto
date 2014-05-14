package proyecto



class Jugador {
	
	@Property String nombreJugador
	@Property double nivelAdvertencia 
	@Property double contadorPartidos
//	@Property int nivelDePrioridad
	@Property TipoDeSuscripcion formaDeInscripcion

	
	def trataDeInscribirteAlPartido(Partido partido){
		this.formaDeInscripcion.inscribirSegunTipoDeSuscripcion(partido,this)
	}
	
	def prioridad() {
		this.formaDeInscripcion.prioridad()
	}

}
	
		

	
	
