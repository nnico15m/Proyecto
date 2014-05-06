package proyecto



class Jugador {
	
	@Property String nombreJugador
	@Property double nivelAdvertencia 
	@Property double contadorPartidos
	@Property int nivelDePrioridad
	@Property TipoDeSuscripcion formaDeInscripcion

	
	def inscribirsePartido(Partido partido){
		
		if(partido.comunidad.contains(this)){
			this.formaDeInscripcion.inscribirSegunTipoDeSuscripcion(partido,this)
		}
		
	}
	
		
}
	
	
